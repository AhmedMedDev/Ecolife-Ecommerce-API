
![Reference Temp](https://raw.githubusercontent.com/dedoa82/Ecolife-Ecommerce-API/master/readme_pics/ref.png)


## Installation

Open the project in your VS Code editor 

Open terminal (ctrl+`) and write 

```bash
composer install
```

Copy .env.example to a new file and rename it to .env, then write this command in terminal 

```bash
php artisan key:generate
```

To Generate JWT Secrete

```bash
php artisan jwt:secret
```

To create the symbolic link

```bash
php artisan storage:link
```

To start the server 
```bash

php artisan serve
```


and that's it 

