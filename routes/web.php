<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminAuthController;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\AdminSliderController;
use App\Http\Controllers\Admin\AdminWelcomeItemController;
use App\Http\Controllers\Admin\AdminFeatureController;
use App\Http\Controllers\Admin\AdminCounterItemController;
use App\Http\Controllers\Admin\AdminTestimonialController;
use App\Http\Controllers\Admin\AdminTeamMemberController;
use App\Http\Controllers\Admin\AdminFaqController;
use App\Http\Controllers\Admin\AdminBlogCategoryController;
use App\Http\Controllers\Admin\AdminPostController;
use App\Http\Controllers\Admin\AdminDestinationController;
use App\Http\Controllers\Admin\AdminPackageController;
use App\Http\Controllers\Admin\AdminAmenityController;
use App\Http\Controllers\Admin\AdminTourController;
use App\Http\Controllers\Admin\AdminReviewController;
use App\Http\Controllers\Admin\AdminUserController;
use App\Http\Controllers\Admin\AdminSubscriberController;
use App\Http\Controllers\Admin\AdminHomeItemController;
use App\Http\Controllers\Admin\AdminAboutItemController;
use App\Http\Controllers\Admin\AdminContactItemController;
use App\Http\Controllers\Admin\AdminTermPrivacyItemController;
use App\Http\Controllers\Admin\AdminSettingController;

use App\Http\Controllers\Front\FrontController;

use App\Http\Controllers\User\UserController;


// Pages
Route::get('/', [FrontController::class, 'home'])->name('home');
Route::get('/about', [FrontController::class, 'about'])->name('about');
Route::get('/contact', [FrontController::class, 'contact'])->name('contact');
Route::post('/contact/submit', [FrontController::class, 'contact_submit'])->name('contact_submit');
Route::get('/team-members', [FrontController::class, 'team_members'])->name('team_members');
Route::get('/team-member/{slug}', [FrontController::class, 'team_member'])->name('team_member');
Route::get('/faq', [FrontController::class, 'faq'])->name('faq');
Route::get('/blog', [FrontController::class, 'blog'])->name('blog');
Route::get('/post/{slug}', [FrontController::class, 'post'])->name('post');
Route::get('/category/{slug}', [FrontController::class, 'category'])->name('category');
Route::get('/destinations', [FrontController::class, 'destinations'])->name('destinations');
Route::get('/destination/{slug}', [FrontController::class, 'destination'])->name('destination');
Route::get('/packages', [FrontController::class, 'packages'])->name('packages');
Route::get('/package/{slug}', [FrontController::class, 'package'])->name('package');
Route::post('/enquery/submit/{id}', [FrontController::class, 'enquery_form_submit'])->name('enquery_form_submit');
Route::post('/review/submit', [FrontController::class, 'review_submit'])->name('review_submit');
Route::get('/wishlist/{package_id}', [FrontController::class, 'wishlist'])->name('wishlist');
Route::post('/subscriber_submit', [FrontController::class, 'subscriber_submit'])->name('subscriber_submit');
Route::get('/subscriber_verify/{email}/{token}', [FrontController::class, 'subscriber_verify'])->name('subscriber_verify');
Route::get('/terms-of-use', [FrontController::class, 'terms'])->name('terms');
Route::get('/privacy-policy', [FrontController::class, 'privacy'])->name('privacy');

// Payment
Route::post('/payment', [FrontController::class, 'payment'])->name('payment');

Route::get('/paypal/success', [FrontController::class, 'paypal_success'])->name('paypal_success');
Route::get('/paypal/cancel', [FrontController::class, 'paypal_cancel'])->name('paypal_cancel');

Route::get('/stripe/success', [FrontController::class, 'stripe_success'])->name('stripe_success');
Route::get('/stripe/cancel', [FrontController::class, 'stripe_cancel'])->name('stripe_cancel');




// Registration and Login
Route::get('/registration', [FrontController::class, 'registration'])->name('registration');
Route::post('/registration', [FrontController::class, 'registration_submit'])->name('registration_submit');
Route::get('/registration-verify/{email}/{token}', [FrontController::class, 'registration_verify'])->name('registration_verify');
Route::get('/login', [FrontController::class, 'login'])->name('login');
Route::post('/login', [FrontController::class, 'login_submit'])->name('login_submit');
Route::get('/forget-password', [FrontController::class, 'forget_password'])->name('forget_password');
Route::post('/forget-password', [FrontController::class, 'forget_password_submit'])->name('forget_password_submit');
Route::get('/reset-password/{token}/{email}', [FrontController::class, 'reset_password'])->name('reset_password');
Route::post('/reset-password/{token}/{email}', [FrontController::class, 'reset_password_submit'])->name('reset_password_submit');
Route::get('/logout', [FrontController::class, 'logout'])->name('logout');


// User
Route::middleware('auth')->prefix('user')->group(function () {
    Route::get('/dashboard', [UserController::class, 'dashboard'])->name('user_dashboard');
    Route::get('/booking', [UserController::class, 'booking'])->name('user_booking');
    Route::get('/invoice/{invoice_no}', [UserController::class, 'invoice'])->name('user_invoice');
    Route::get('/review', [UserController::class, 'review'])->name('user_review');
    Route::get('/wishlist', [UserController::class, 'wishlist'])->name('user_wishlist');
    Route::get('/wishlist-delete/{id}', [UserController::class, 'wishlist_delete'])->name('user_wishlist_delete');
    Route::get('/message', [UserController::class, 'message'])->name('user_message');
    Route::get('/message-start', [UserController::class, 'message_start'])->name('user_message_start');
    Route::post('/message-submit', [UserController::class, 'message_submit'])->name('user_message_submit');
    Route::get('/profile', [UserController::class, 'profile'])->name('user_profile');
    Route::post('/profile', [UserController::class, 'profile_submit'])->name('user_profile_submit');
});


// Admin
Route::middleware('admin')->prefix('admin')->group(function () {
    // Dashboard Section
    Route::get('/dashboard', [AdminDashboardController::class, 'dashboard'])->name('admin_dashboard');

    // Profile Section
    Route::get('/profile', [AdminAuthController::class, 'profile'])->name('admin_profile');
    Route::post('/profile', [AdminAuthController::class, 'profile_submit'])->name('admin_profile_submit');

    // Slider Section
    Route::get('/slider/index', [AdminSliderController::class, 'index'])->name('admin_slider_index');
    Route::get('/slider/create', [AdminSliderController::class, 'create'])->name('admin_slider_create');
    Route::post('/slider/create', [AdminSliderController::class, 'create_submit'])->name('admin_slider_create_submit');
    Route::get('/slider/edit/{id}', [AdminSliderController::class, 'edit'])->name('admin_slider_edit');
    Route::post('/slider/edit/{id}', [AdminSliderController::class, 'edit_submit'])->name('admin_slider_edit_submit');
    Route::get('/slider/delete/{id}', [AdminSliderController::class, 'delete'])->name('admin_slider_delete');

    // Welcome Section
    Route::get('/welcome-item/index', [AdminWelcomeItemController::class, 'index'])->name('admin_welcome_item_index');
    Route::post('/welcome-item/update', [AdminWelcomeItemController::class, 'update'])->name('admin_welcome_item_update');

    // Feature Section
    Route::get('/feature/index', [AdminFeatureController::class, 'index'])->name('admin_feature_index');
    Route::get('/feature/create', [AdminFeatureController::class, 'create'])->name('admin_feature_create');
    Route::post('/feature/create', [AdminFeatureController::class, 'create_submit'])->name('admin_feature_create_submit');
    Route::get('/feature/edit/{id}', [AdminFeatureController::class, 'edit'])->name('admin_feature_edit');
    Route::post('/feature/edit/{id}', [AdminFeatureController::class, 'edit_submit'])->name('admin_feature_edit_submit');
    Route::get('/feature/delete/{id}', [AdminFeatureController::class, 'delete'])->name('admin_feature_delete');

    // Counter Section
    Route::get('/counter-item/index', [AdminCounterItemController::class, 'index'])->name('admin_counter_item_index');
    Route::post('/counter-item/update', [AdminCounterItemController::class, 'update'])->name('admin_counter_item_update');

    // Testimonial Section
    Route::get('/testimonial/index', [AdminTestimonialController::class, 'index'])->name('admin_testimonial_index');
    Route::get('/testimonial/create', [AdminTestimonialController::class, 'create'])->name('admin_testimonial_create');
    Route::post('/testimonial/create', [AdminTestimonialController::class, 'create_submit'])->name('admin_testimonial_create_submit');
    Route::get('/testimonial/edit/{id}', [AdminTestimonialController::class, 'edit'])->name('admin_testimonial_edit');
    Route::post('/testimonial/edit/{id}', [AdminTestimonialController::class, 'edit_submit'])->name('admin_testimonial_edit_submit');
    Route::get('/testimonial/delete/{id}', [AdminTestimonialController::class, 'delete'])->name('admin_testimonial_delete');

    // Team Member Section
    Route::get('/team-member/index', [AdminTeamMemberController::class, 'index'])->name('admin_team_member_index');
    Route::get('/team-member/create', [AdminTeamMemberController::class, 'create'])->name('admin_team_member_create');
    Route::post('/team-member/create', [AdminTeamMemberController::class, 'create_submit'])->name('admin_team_member_create_submit');
    Route::get('/team-member/edit/{id}', [AdminTeamMemberController::class, 'edit'])->name('admin_team_member_edit');
    Route::post('/team-member/edit/{id}', [AdminTeamMemberController::class, 'edit_submit'])->name('admin_team_member_edit_submit');
    Route::get('/team-member/delete/{id}', [AdminTeamMemberController::class, 'delete'])->name('admin_team_member_delete');

    // FAQ Section
    Route::get('/faq/index', [AdminFaqController::class, 'index'])->name('admin_faq_index');
    Route::get('/faq/create', [AdminFaqController::class, 'create'])->name('admin_faq_create');
    Route::post('/faq/create', [AdminFaqController::class, 'create_submit'])->name('admin_faq_create_submit');
    Route::get('/faq/edit/{id}', [AdminFaqController::class, 'edit'])->name('admin_faq_edit');
    Route::post('/faq/edit/{id}', [AdminFaqController::class, 'edit_submit'])->name('admin_faq_edit_submit');
    Route::get('/faq/delete/{id}', [AdminFaqController::class, 'delete'])->name('admin_faq_delete');

    // Blog Category Section
    Route::get('/blog-category/index', [AdminBlogCategoryController::class, 'index'])->name('admin_blog_category_index');
    Route::get('/blog-category/create', [AdminBlogCategoryController::class, 'create'])->name('admin_blog_category_create');
    Route::post('/blog-category/create', [AdminBlogCategoryController::class, 'create_submit'])->name('admin_blog_category_create_submit');
    Route::get('/blog-category/edit/{id}', [AdminBlogCategoryController::class, 'edit'])->name('admin_blog_category_edit');
    Route::post('/blog-category/edit/{id}', [AdminBlogCategoryController::class, 'edit_submit'])->name('admin_blog_category_edit_submit');
    Route::get('/blog-category/delete/{id}', [AdminBlogCategoryController::class, 'delete'])->name('admin_blog_category_delete');

    // Post Section
    Route::get('/post/index', [AdminPostController::class, 'index'])->name('admin_post_index');
    Route::get('/post/create', [AdminPostController::class, 'create'])->name('admin_post_create');
    Route::post('/post/create', [AdminPostController::class, 'create_submit'])->name('admin_post_create_submit');
    Route::get('/post/edit/{id}', [AdminPostController::class, 'edit'])->name('admin_post_edit');
    Route::post('/post/edit/{id}', [AdminPostController::class, 'edit_submit'])->name('admin_post_edit_submit');
    Route::get('/post/delete/{id}', [AdminPostController::class, 'delete'])->name('admin_post_delete');

    // Destination Section
    Route::get('/destination/index', [AdminDestinationController::class, 'index'])->name('admin_destination_index');
    Route::get('/destination/create', [AdminDestinationController::class, 'create'])->name('admin_destination_create');
    Route::post('/destination/create', [AdminDestinationController::class, 'create_submit'])->name('admin_destination_create_submit');
    Route::get('/destination/edit/{id}', [AdminDestinationController::class, 'edit'])->name('admin_destination_edit');
    Route::post('/destination/edit/{id}', [AdminDestinationController::class, 'edit_submit'])->name('admin_destination_edit_submit');
    Route::get('/destination/delete/{id}', [AdminDestinationController::class, 'delete'])->name('admin_destination_delete');

    // Destination Photo Section
    Route::get('/destination-photos/{id}', [AdminDestinationController::class, 'destination_photos'])->name('admin_destination_photos');
    Route::post('/destination-photo-submit/{id}', [AdminDestinationController::class, 'destination_photo_submit'])->name('admin_destination_photo_submit');
    Route::get('/destination-photo-delete/{id}', [AdminDestinationController::class, 'destination_photo_delete'])->name('admin_destination_photo_delete');

    // Destination Video Section
    Route::get('/destination-videos/{id}', [AdminDestinationController::class, 'destination_videos'])->name('admin_destination_videos');
    Route::post('/destination-video-submit/{id}', [AdminDestinationController::class, 'destination_video_submit'])->name('admin_destination_video_submit');
    Route::get('/destination-video-delete/{id}', [AdminDestinationController::class, 'destination_video_delete'])->name('admin_destination_video_delete');

    // Package Section
    Route::get('/package/index', [AdminPackageController::class, 'index'])->name('admin_package_index');
    Route::get('/package/create', [AdminPackageController::class, 'create'])->name('admin_package_create');
    Route::post('/package/create', [AdminPackageController::class, 'create_submit'])->name('admin_package_create_submit');
    Route::get('/package/edit/{id}', [AdminPackageController::class, 'edit'])->name('admin_package_edit');
    Route::post('/package/edit/{id}', [AdminPackageController::class, 'edit_submit'])->name('admin_package_edit_submit');
    Route::get('/package/delete/{id}', [AdminPackageController::class, 'delete'])->name('admin_package_delete');

    // Package Amenity Section
    Route::get('/package-amenities/{id}', [AdminPackageController::class, 'package_amenities'])->name('admin_package_amenities');
    Route::post('/package-amenity-submit/{id}', [AdminPackageController::class, 'package_amenity_submit'])->name('admin_package_amenity_submit');
    Route::get('/package-amenity-delete/{id}', [AdminPackageController::class, 'package_amenity_delete'])->name('admin_package_amenity_delete');

    // Package Itinerary Section
    Route::get('/package-itineraries/{id}', [AdminPackageController::class, 'package_itineraries'])->name('admin_package_itineraries');
    Route::post('/package-itinerary-submit/{id}', [AdminPackageController::class, 'package_itinerary_submit'])->name('admin_package_itinerary_submit');
    Route::get('/package-itinerary-delete/{id}', [AdminPackageController::class, 'package_itinerary_delete'])->name('admin_package_itinerary_delete');

    // Package Photos Section
    Route::get('/package-photos/{id}', [AdminPackageController::class, 'package_photos'])->name('admin_package_photos');
    Route::post('/package-photo-submit/{id}', [AdminPackageController::class, 'package_photo_submit'])->name('admin_package_photo_submit');
    Route::get('/package-photo-delete/{id}', [AdminPackageController::class, 'package_photo_delete'])->name('admin_package_photo_delete');

    // Package Videos Section
    Route::get('/package-videos/{id}', [AdminPackageController::class, 'package_videos'])->name('admin_package_videos');
    Route::post('/package-video-submit/{id}', [AdminPackageController::class, 'package_video_submit'])->name('admin_package_video_submit');
    Route::get('/package-video-delete/{id}', [AdminPackageController::class, 'package_video_delete'])->name('admin_package_video_delete');

    // Package FAQ Section
    Route::get('/package-faqs/{id}', [AdminPackageController::class, 'package_faqs'])->name('admin_package_faqs');
    Route::post('/package-faq-submit/{id}', [AdminPackageController::class, 'package_faq_submit'])->name('admin_package_faq_submit');
    Route::get('/package-faq-delete/{id}', [AdminPackageController::class, 'package_faq_delete'])->name('admin_package_faq_delete');

    // Amenity Section
    Route::get('/amenity/index', [AdminAmenityController::class, 'index'])->name('admin_amenity_index');
    Route::get('/amenity/create', [AdminAmenityController::class, 'create'])->name('admin_amenity_create');
    Route::post('/amenity/create', [AdminAmenityController::class, 'create_submit'])->name('admin_amenity_create_submit');
    Route::get('/amenity/edit/{id}', [AdminAmenityController::class, 'edit'])->name('admin_amenity_edit');
    Route::post('/amenity/edit/{id}', [AdminAmenityController::class, 'edit_submit'])->name('admin_amenity_edit_submit');
    Route::get('/amenity/delete/{id}', [AdminAmenityController::class, 'delete'])->name('admin_amenity_delete');

    // Tour Section
    Route::get('/tour/pricing', [AdminTourController::class, 'pricing'])->name('admin_tour_pricing');
    Route::get('/tour/index', [AdminTourController::class, 'index'])->name('admin_tour_index');
    Route::get('/tour/create', [AdminTourController::class, 'create'])->name('admin_tour_create');
    Route::post('/tour/create', [AdminTourController::class, 'create_submit'])->name('admin_tour_create_submit');
    Route::get('/tour/edit/{id}', [AdminTourController::class, 'edit'])->name('admin_tour_edit');
    Route::post('/tour/edit/{id}', [AdminTourController::class, 'edit_submit'])->name('admin_tour_edit_submit');
    Route::get('/tour/delete/{id}', [AdminTourController::class, 'delete'])->name('admin_tour_delete');
    Route::get('/tour/booking/{tour_id}/{package_id}', [AdminTourController::class, 'tour_booking'])->name('admin_tour_booking');
    Route::get('/tour/booking-delete/{id}', [AdminTourController::class, 'tour_booking_delete'])->name('admin_tour_booking_delete');
    Route::get('/tour/booking-approve/{id}', [AdminTourController::class, 'tour_booking_approve'])->name('admin_tour_booking_approve');
    Route::get('/tour/invoice/{invoice_no}', [AdminTourController::class, 'tour_invoice'])->name('admin_tour_invoice');

    // Review Section
    Route::get('/review/index', [AdminReviewController::class, 'index'])->name('admin_review_index');
    Route::get('/review/delete/{id}', [AdminReviewController::class, 'delete'])->name('admin_review_delete');

    // User Section
    Route::get('/users', [AdminUserController::class, 'users'])->name('admin_users');
    Route::get('/user/create', [AdminUserController::class, 'user_create'])->name('admin_user_create');
    Route::post('/user/create', [AdminUserController::class, 'user_create_submit'])->name('admin_user_create_submit');
    Route::get('/user/edit/{id}', [AdminUserController::class, 'user_edit'])->name('admin_user_edit');
    Route::post('/user/edit/{id}', [AdminUserController::class, 'user_edit_submit'])->name('admin_user_edit_submit');
    Route::get('/user/delete/{id}', [AdminUserController::class, 'user_delete'])->name('admin_user_delete');
    Route::get('/message', [AdminUserController::class, 'message'])->name('admin_message');
    Route::get('/message-detail/{id}', [AdminUserController::class, 'message_detail'])->name('admin_message_detail');
    Route::post('/message-submit/{id}', [AdminUserController::class, 'message_submit'])->name('admin_message_submit');

    // Subscriber Section
    Route::get('/subscribers', [AdminSubscriberController::class, 'subscribers'])->name('admin_subscribers');
    Route::get('/subscriber-send-email', [AdminSubscriberController::class, 'send_email'])->name('admin_subscriber_send_email');
    Route::post('/subscriber-send-email/submit', [AdminSubscriberController::class, 'send_email_submit'])->name('admin_subscriber_send_email_submit');
    Route::get('/subscriber/delete/{id}', [AdminSubscriberController::class, 'subscriber_delete'])->name('admin_subscriber_delete');

    // Home Item Section
    Route::get('/home-item/index', [AdminHomeItemController::class, 'index'])->name('admin_home_item_index');
    Route::post('/home-item/update', [AdminHomeItemController::class, 'update'])->name('admin_home_item_update');

    // About Item Section
    Route::get('/about-item/index', [AdminAboutItemController::class, 'index'])->name('admin_about_item_index');
    Route::post('/about-item/update', [AdminAboutItemController::class, 'update'])->name('admin_about_item_update');

    // Contact Item Section
    Route::get('/contact-item/index', [AdminContactItemController::class, 'index'])->name('admin_contact_item_index');
    Route::post('/contact-item/update', [AdminContactItemController::class, 'update'])->name('admin_contact_item_update');

    // Term and Privacy Item Section
    Route::get('/term-privacy-item/index', [AdminTermPrivacyItemController::class, 'index'])->name('admin_term_privacy_item_index');
    Route::post('/term-privacy-item/update', [AdminTermPrivacyItemController::class, 'update'])->name('admin_term_privacy_item_update');

    // Setting Section
    Route::get('/setting/index', [AdminSettingController::class, 'index'])->name('admin_setting_index');
    Route::post('/setting/update', [AdminSettingController::class, 'update'])->name('admin_setting_update');
});

Route::prefix('admin')->group(function () {
    Route::get('/login', [AdminAuthController::class, 'login'])->name('admin_login');
    Route::post('/login', [AdminAuthController::class, 'login_submit'])->name('admin_login_submit');
    Route::get('/logout', [AdminAuthController::class, 'logout'])->name('admin_logout');
    Route::get('/forget-password', [AdminAuthController::class, 'forget_password'])->name('admin_forget_password');
    Route::post('/forget-password', [AdminAuthController::class, 'forget_password_submit'])->name('admin_forget_password_submit');
    Route::get('/reset-password/{token}/{email}', [AdminAuthController::class, 'reset_password'])->name('admin_reset_password');
    Route::post('/reset-password/{token}/{email}', [AdminAuthController::class, 'reset_password_submit'])->name('admin_reset_password_submit');

});