<?php

namespace App\Http\Controllers;

use PDO;
use SQLite3;
use Directory;

use Exception;
use PSpell\Config;



use App\Models\User;
use Illuminate\Support\Env;
use Illuminate\Http\Request;
use function Termwind\render;


use App\Traits\CheckConnection;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\File;
use App\Http\Requests\InstallRequest;
use Illuminate\Filesystem\Filesystem;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Schema;

use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

class InstallController extends Controller
{
    use CheckConnection;

    // public function __invoke(): RedirectResponse

    // {


    //     // return redirect()->signedRoute('install');

    // }




    public function getSignedUrl()
    {
        return redirect()->temporarySignedRoute('install', now()->addSecond(30));
        // $this->get('install')->assertRedirectToSignedRoute();
        // return redirect(URL::temporarySignedRoute('install',now()->addSecond(30)));
        //    echo URL::temporarySignedRoute('install',now()->addSecond(30));
        // dd($id);
        // echo URL::signedRoute('install', ['user' => $id]);
    }
    public function installajax(Request $request)
    {
        // return "ss";
        // return URL::temporarySignedRoute(
        //     'install', now()->addMinutes(30)
        // );

        // $url=URL::temporarySignedRoute('install',now()->addSecond(30));
        // return $url;
        // return view('installajax',compact('url'));
        // if (! $request->hasValidSignature()) {
        //     abort(401);
        // }
        // return URL::temporarySignedRoute(

        //     'install', now()->addMinutes(30)

        // );
        // Url::signedRoute('install', [ 'response' => 'yes']);

        // dd(request()->hasValidSignature());
        // Url::signedRoute('install', [ 'response' => 'yes']);
        // return redirect(URL::temporarySignedRoute('install',now()->addSecond(30)));
        // if (! $request->hasValidSignature()) {
        //     abort(401);
        // }
        // $viewRender = view('installajax')->render();
        // $viewRender = view('viewRend')->render();

        // return response()->json(array('success' => true, 'html'=>$viewRender));
        return view('installajax');
    }
    public function createDir($path, $database)
    {
        // dd($path );

        $dir = dirname($path) . '\database\sqllite';

        // dd(file_exists($dir) );
        // dd('befor delete');
        File::deleteDirectory($dir);

        if (!file_exists($dir)) {
            // dd($dir );
            $dbdir = $dir . '/' . $database . '.sqlite';
            mkdir($dir, 0777, true);

            // File::put($path.'db.sqlite');
            if (!file_exists($dbdir)) {
                File::put($dbdir, '');
            }
        }
    }

    public function createdb1(Request $request)
    {
        $path = database_path();
        // dd($path);
        // $this->createDir($path);
        // File::put($path, $path);
        // $driverName ='mysql';
        // // $driverName = $request->input('database_connection');
        // $connectionName = 'database.connections.' . $driverName;
        // $databaseName = 'samba';
        // // $databaseName = $request->input('database_name');

        // config([
        //     'database.default' => $driverName,
        //     $connectionName => array_merge(config($connectionName), [
        //         'host' => '127.0.0.1',
        //         // 'host' => $request->input('database_hostname'),
        //         'port' => '3306',
        //         // 'port' => $request->input('database_port'),
        //         'database' => $databaseName,
        //         'username' => 'root',
        //         'password' => '',
        //     ]),
        // ]);

        // try {
        //     DB::purge($driverName);
        //     $charset = config("database.connections.mysql.charset",'utf8mb4');
        //         $collation = config("database.connections.mysql.collation",'utf8mb4_unicode_ci');
        //         $query = "CREATE DATABASE IF NOT EXISTS $databaseName CHARACTER SET $charset COLLATE $collation";
        //         dd( $query);
        //         DB::unprepared($query);
        //         dd('ss');

        //     DB::unprepared('USE `'. $databaseName .'`');
        //     dd('ss');
        //     DB::connection()->setDatabaseName($databaseName);

        //     DB::getSchemaBuilder()->dropAllTables();
        //     DB::unprepared(file_get_contents(base_path('database.sql')));

        //     // File::delete(app()->bootstrapPath('cache/plugins.php'));
        // } catch (QueryException $exception) {

        //     $errors = new MessageBag();

        //     $errors->add('database', $exception->getMessage());
        //     // dd( $errors);
        //     return back()->withInput()->withErrors($errors);
        // }
    }
    public function createdb(InstallRequest $request)
    {

        $validatedData = $request->validated();
        if ($validatedData) {
            try {

                $DB_TYPE = $request->dbtype;
                $DB_DATABASE = $request->dbname;
                $APP_URL = $request->domain;
                $DB_HOST = $request->dbservername;
                $DB_PORT = $request->dbserverport;
                $DB_USERNAME = $request->username;
                $DB_PASSWORD = $request->password;

                Artisan::call('config:clear');

                $arrayoriginal = [];
                $arrayreplace = [];

                $env = file_get_contents(base_path() . '/.env');


                if ($DB_TYPE === "sqlite") {
                    $sqllitepath = database_path();

                    $this->createDir($sqllitepath, $DB_DATABASE);
                    config('database.connections.sqlite.database',  $sqllitepath . 'sqllite/' . $DB_DATABASE . '.sqlite');

                    $arrayoriginal = [
                        'DB_CONNECTION=' . env('DB_CONNECTION'),
                        'APP_URL=' . env('APP_URL'),
                        'DB_DATABASE=' . env('DB_DATABASE'),

                    ];
                    $sqllitepath = str_replace('\\', '/', database_path()) . '/';

                    $arrayreplace = [
                        'DB_CONNECTION=' . $DB_TYPE,
                        'APP_URL=' . $APP_URL,
                        'DB_DATABASE=' . $sqllitepath . 'sqllite/' . $DB_DATABASE . '.sqlite',
                    ];
                }
                if ($DB_TYPE === "mysql") {
                    $arrayoriginal = [
                        'DB_CONNECTION=' . env('DB_CONNECTION'),
                        'DB_DATABASE=' . env('DB_DATABASE'),
                        'DB_HOST=' . env('DB_HOST'),
                        'DB_PORT=' . env('DB_PORT'),
                        'DB_USERNAME=' . env('DB_USERNAME'),
                        'DB_PASSWORD=' . env('DB_PASSWORD'),

                    ];

                    $arrayreplace = [
                        'DB_CONNECTION=' . $DB_TYPE,
                        'DB_DATABASE=' . $DB_DATABASE,
                        'DB_HOST=' . $DB_HOST,
                        'DB_PORT=' . $DB_PORT,
                        'DB_USERNAME=' . $DB_USERNAME,
                        'DB_PASSWORD=' . $DB_PASSWORD,

                    ];
                }
                if ($DB_TYPE === "pgsql") {
                    $arrayoriginal = [
                        'DB_CONNECTION=' . env('DB_CONNECTION'),
                        'DB_DATABASE=' . env('DB_DATABASE'),
                        'DB_HOST=' . env('DB_HOST'),
                        'DB_PORT=' . env('DB_PORT'),
                        'DB_USERNAME=' . env('DB_USERNAME'),
                        'DB_PASSWORD=' . env('DB_PASSWORD'),

                    ];

                    $arrayreplace = [
                        'DB_CONNECTION=' . $DB_TYPE,
                        'DB_DATABASE=' . $DB_DATABASE,
                        'DB_HOST=' . $DB_HOST,
                        'DB_PORT=' . $DB_PORT,
                        'DB_USERNAME=' . $DB_USERNAME,
                        'DB_PASSWORD=' . $DB_PASSWORD,

                    ];
                }

                $env = str_replace(
                    $arrayoriginal,
                    $arrayreplace,
                    $env
                );


                file_put_contents(base_path() . '/.env', $env);




                if ($DB_TYPE === "sqlite") {

                    Artisan::call('config:cache');
                    Artisan::call('config:clear');
                    $connection = $this->checkConnection();
                    if ($connection) {

                        Artisan::call('migrate', [
                            '--force' => true,

                        ]);
                        Artisan::call('db:seed');
                        Artisan::call('config:clear');
                    }
                    return response()->json([
                        'status' => true,
                        'msg' => 'DB Sqlite Created Successfully',

                    ]);
                }
                if ($DB_TYPE === "pgsql") {
                    Artisan::call('config:cache');
                    Artisan::call('config:clear');
                    
                    $connection = $this->checkConnection();
                    
                    $charset = config("database.connections.pgsql.charset", 'utf8');
                
                    if($connection)
                    {
                        
                        $pdo  = new PDO(sprintf('pgsql:host=%s;port=%d;dbname='.$DB_DATABASE.';sslmode=prefer;', $DB_HOST, $DB_PORT),$DB_USERNAME, $DB_PASSWORD);
                        $dropquery='DROP SCHEMA public CASCADE;
                        CREATE SCHEMA public; 
                        GRANT ALL ON SCHEMA public TO postgres;
                        GRANT ALL ON SCHEMA public TO public; ';
                        $pdo->exec(sprintf(
                            $dropquery
                           ));
                       
                           Artisan::call('migrate', [
                            '--force' => true,

                        ]);
                        Artisan::call('db:seed');
                        return response()->json([
                            'status' => true,
                            'msg' => 'DB PgSql Created Successfully',

                        ]);
                   
                    }
                    else{
                     
                    //    $db= DB::getConnection()->statement('CREATE DATABASE :schema', ['schema' => $DB_DATABASE]);
                    $pdo  = new PDO(sprintf('pgsql:host=%s;port=%d;dbname=postgres;sslmode=prefer;', $DB_HOST, $DB_PORT),$DB_USERNAME, $DB_PASSWORD);
                        
                        $query='CREATE DATABASE '.$DB_DATABASE.' WITH OWNER = '.$DB_USERNAME.' ENCODING = \''.$charset.
                        '\' LC_COLLATE = \'English_United States.1256\'
                         LC_CTYPE = \'English_United States.1256\'
                            TABLESPACE = pg_default
                         CONNECTION LIMIT = -1;';

                        //  $pdo  = new PDO(sprintf('pgsql:host=%s;port=%d;sslmode=prefer', $DB_HOST, $DB_PORT), 'samba', 'samba');
                        //  return response()->json([
                        //     'status' => false,
                        //     'msg' => 'DB Pgsql Unconnect',

                        // ]);
                         $pdo->exec(sprintf(
                            $query
                           ));
                           Artisan::call('migrate', [
                            '--force' => true,

                        ]);
                        Artisan::call('db:seed');
                        return response()->json([
                            'status' => true,
                            'msg' => 'DB PgSql Created Successfully',

                        ]);
                        
                    }
                    
                 
                }
                if ($DB_TYPE === "mysql") {

                    $connection = $this->checkConnection();

                    if (!$connection) {
                        $charset = config("database.connections.mysql.charset", 'utf8mb4');
                        $collation = config("database.connections.mysql.collation", 'utf8mb4_unicode_ci');
                        $pdo = new PDO('mysql:host=' . $DB_HOST,  $DB_USERNAME, $DB_PASSWORD);
                        $querydelete = 'DROP DATABASE  IF  EXISTS ' . $DB_DATABASE;
                        $pdo->exec($querydelete);
                        $query = 'CREATE DATABASE IF NOT EXISTS ' . $DB_DATABASE . ' CHARACTER SET ' . $charset . ' COLLATE ' . $collation . ';';
                        $pdo->exec($query);
                        Artisan::call('config:cache');
                        Artisan::call('config:clear');
                        DB::reconnect('mysql');
                        Artisan::call('migrate', [
                            '--force' => true,

                        ]);
                        Artisan::call('db:seed');
                        return response()->json([
                            'status' => true,
                            'msg' => 'DB Sql Created Successfully',

                        ]);
                    } else {
                        return response()->json([
                            'status' => false,
                            'msg' => 'Unconnect To DB',

                        ]);
                    }
                }
            } catch (Exception $th) {
                // return parent::render($request, $th);
                return response()->json([
                    'status' => false,
                    'msg' => $th->getMessage(),
                    // 'msg' => 'Unconnect To DB '.$DB_DATABASE,

                ]);
            }
        }
    }
    public function createdbajax(InstallRequest $request)
    {

        $validatedData = $request->validated();
        if ($validatedData) {
            try {

                $DB_TYPE = $request->dbtype;
                $DB_DATABASE = $request->dbname;
                $APP_URL = $request->domain;
                $DB_HOST = $request->dbservername;
                $DB_PORT = $request->dbserverport;
                $DB_USERNAME = $request->username;
                $DB_PASSWORD = $request->password;


                // Artisan::call('config:cache');

                Artisan::call('config:clear');



                $arrayoriginal = [];
                $arrayreplace = [];

                $env = file_get_contents(base_path() . '/.env');


                if ($DB_TYPE === "sqlite") {
                    $sqllitepath = database_path();

                    $this->createDir($sqllitepath, $DB_DATABASE);
                    config('database.connections.sqlite.database',  $sqllitepath . 'sqllite/' . $DB_DATABASE . '.sqlite');

                    $arrayoriginal = [
                        'DB_CONNECTION=' . env('DB_CONNECTION'),
                        'APP_URL=' . env('APP_URL'),
                        'DB_DATABASE=' . env('DB_DATABASE'),

                    ];
                    $sqllitepath = str_replace('\\', '/', database_path()) . '/';

                    $arrayreplace = [
                        'DB_CONNECTION=' . $DB_TYPE,
                        'APP_URL=' . $APP_URL,
                        'DB_DATABASE=' . $sqllitepath . 'sqllite/' . $DB_DATABASE . '.sqlite',
                    ];
                }
                if ($DB_TYPE === "mysql") {
                    $arrayoriginal = [
                        'DB_CONNECTION=' . env('DB_CONNECTION'),
                        'DB_DATABASE=' . env('DB_DATABASE'),
                        'DB_HOST=' . env('DB_HOST'),
                        'DB_PORT=' . env('DB_PORT'),
                        'DB_USERNAME=' . env('DB_USERNAME'),
                        'DB_PASSWORD=' . env('DB_PASSWORD'),

                    ];

                    $arrayreplace = [
                        'DB_CONNECTION=' . $DB_TYPE,
                        'DB_DATABASE=' . $DB_DATABASE,
                        'DB_HOST=' . $DB_HOST,
                        'DB_PORT=' . $DB_PORT,
                        'DB_USERNAME=' . $DB_USERNAME,
                        'DB_PASSWORD=' . $DB_PASSWORD,

                    ];
                }

                $env = str_replace(
                    $arrayoriginal,
                    $arrayreplace,
                    $env
                );

                // Artisan::call('config:clear'); 

                // And overwrite the .env with the new data
                file_put_contents(base_path() . '/.env', $env);
                Artisan::call('config:cache');

                // Artisan::call('config:cache');
                // Artisan::call('config:clear');  



                if ($DB_TYPE === "sqlite") {

                    $connection = $this->checkConnection();

                    if ($connection) {





                        // Cache::flush();

                        Artisan::call('migrate', [
                            '--force' => true,

                        ]);
                        Artisan::call('db:seed');
                        Artisan::call('config:clear');
                        return response()->json([
                            'status' => true,
                            'msg' => 'dataabase sqllite Created Successfully',

                        ]);
                    }
                }
                if ($DB_TYPE === "mysql") {
                    $connection = $this->checkConnection();

                    // dd($connection);
                    if (!$connection) {

                        $charset = config("database.connections.mysql.charset", 'utf8mb4');
                        $collation = config("database.connections.mysql.collation", 'utf8mb4_unicode_ci');

                        // $pdo = new PDO('mysql:host=' . env('DB_HOST'), env('DB_USERNAME'), env('DB_PASSWORD'));
                        $pdo = new PDO('mysql:host=' . $DB_HOST,  $DB_USERNAME, $DB_PASSWORD);
                        $pdo->exec('CREATE DATABASE ' . $DB_DATABASE);
                        Artisan::call('config:cache');
                        DB::reconnect('mysql');

                        // Artisan::call('config:cache');



                        // config(["database.connections.mysql.database" => null]);

                        // $query = "CREATE DATABASE IF NOT EXISTS $DB_DATABASE CHARACTER SET $charset COLLATE $collation";


                        // DB::statement($query);
                        // dd('create');
                        // config(["database.connections.mysql.database" => $DB_DATABASE]);


                        Artisan::call('migrate', [
                            '--force' => true,

                        ]);

                        Artisan::call('db:seed');
                        Artisan::call('config:clear');
                        return response()->json([
                            'status' => true,
                            'msg' => 'dataabase Created Successfully',

                        ]);
                    } else {
                        return response()->json([
                            'status' => true,
                            'msg' => 'dataabase Already Created',

                        ]);
                    }
                }







                // return redirect()->route('installed')->with('message','install success');
            } catch (\Throwable $th) {
                // throw $th;

                // Session::put('message','User Name Or Password are incorrect');

                // Artisan::call('config:cache');
                return response()->json([
                    'status' => false,
                    'msg' => 'Uninstall Wrong data',

                ]);
                // return redirect('install')->with('message', 'User Name Or Password are incorrect');
            }
        }
    }
    public function installed()
    {
        $users = User::all();
        // dd($users);
        return view('installed', compact('users'));
    }
}
