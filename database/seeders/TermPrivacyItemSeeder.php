<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\TermPrivacyItem;

class TermPrivacyItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $obj = new TermPrivacyItem;
        $obj->term = 'Term Data Here';
        $obj->privacy = 'Privacy Data Here';
        $obj->save();
    }
}
