<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Testimonial;
use App\Models\TeamMember;
use App\Models\Post;
use App\Models\Destination;
use App\Models\Package;
use App\Models\User;
use App\Models\Subscriber;
use App\Models\Tour;

class AdminDashboardController extends Controller
{
    public function dashboard()
    {
        $total_slider = Slider::count();
        $total_testimonial = Testimonial::count();
        $total_team_members = TeamMember::count();
        $total_posts = Post::count();
        $total_destinations = Destination::count();
        $total_packages = Package::count();
        $total_users = User::where('status',1)->count();
        $total_subscribers = Subscriber::where('status','Active')->count();
        $total_tours = Tour::count();

        return view('admin.dashboard', compact('total_slider', 'total_testimonial', 'total_team_members', 'total_posts', 'total_destinations', 'total_packages', 'total_users', 'total_subscribers', 'total_tours'));
    }
}
