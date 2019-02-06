<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('users')->insert(array (
            0 =>
            array (
                'id'       => 1,
                'name'     => 'Ana',
                'username' => 'anita',
                'email'    => 'anita@osole.es',
                'parent_id'=> 1,
                'password' => bcrypt('anita'),
            ),
        ));
    }
}
