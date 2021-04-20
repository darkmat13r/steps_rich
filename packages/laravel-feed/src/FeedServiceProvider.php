<?php
namespace LaravelFeed;
use Illuminate\Filesystem\Filesystem;
use Illuminate\Support\Collection;
use Illuminate\Support\ServiceProvider;
use LaravelFeed\Contracts\FeedComment;
use LaravelFeed\Contracts\FeedContract;
use LaravelFeed\Contracts\FeedLike;
use LaravelFeed\Models\FeedImage;
use Spatie\Permission\Contracts\Permission as PermissionContract;
use Spatie\Permission\Contracts\Role as RoleContract;

class FeedServiceProvider extends ServiceProvider
{

    public function boot(Filesystem $filesystem)
    {
        $this->loadRoutesFrom(__DIR__ . '/routes/api.php');
        if (function_exists('config_path')) { // function not available and 'publish' not relevant in Lumen
            $this->publishes([
                __DIR__.'/../config/feed.php' => config_path('feed.php'),
            ], 'config');

            $this->publishes([
                __DIR__.'/../database/migrations/create_feed_tables.php' => $this->getMigrationFileName($filesystem, '_create_feed_tables.php'),
            ], 'migrations');
        }
    }

    protected function registerModelBindings()
    {
        $config = $this->app->config['feed.models'];

        if (! $config) {
            return;
        }

        $this->app->bind(FeedContract::class, $config['feed']);
        $this->app->bind(FeedLike::class, $config['like']);
        $this->app->bind(FeedComment::class, $config['comment']);
        $this->app->bind(FeedImage::class, $config['image']);
    }
    public function register()
    {
        $this->mergeConfigFrom(
            __DIR__.'/../config/feed.php',
            'feed'
        );
    }


    /**
     * Returns existing migration file if found, else uses the current timestamp.
     *
     * @param Filesystem $filesystem
     * @return string
     */
    protected function getMigrationFileName(Filesystem $filesystem, $migrationFileName): string
    {
        $timestamp = date('Y_m_d_His');

        return Collection::make($this->app->databasePath().DIRECTORY_SEPARATOR.'migrations'.DIRECTORY_SEPARATOR)
            ->flatMap(function ($path) use ($filesystem) {
                return $filesystem->glob($path.'*_create_feed_tables.php');
            })->push($this->app->databasePath()."/migrations/{$timestamp}_create_feed_tables.php")
            ->flatMap(function ($path) use ($filesystem, $migrationFileName) {
                return $filesystem->glob($path.'*_'.$migrationFileName);
            })
            ->push($this->app->databasePath()."/migrations/{$timestamp}_{$migrationFileName}")
            ->first();
    }
}
