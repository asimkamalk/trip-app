<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\CounterItem;

class CounterItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $obj = new CounterItem;
        $obj->item1_number = "40";
        $obj->item1_text = "Destinations";
        $obj->item2_number = "1200";
        $obj->item2_text = "Clients";
        $obj->item3_number = "130";
        $obj->item3_text = "Packages";
        $obj->item4_number = "60";
        $obj->item4_text = "Feedbacks";
        $obj->status = "Show";
        $obj->save();
    }
}
