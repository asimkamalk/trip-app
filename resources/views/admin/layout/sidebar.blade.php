<div class="main-sidebar">
        <aside id="sidebar-wrapper">
                <div class="sidebar-brand">
                        <a href="{{ route('admin_dashboard') }}">Admin Panel</a>
                </div>
                <div class="sidebar-brand sidebar-brand-sm">
                        <a href="{{ route('admin_dashboard') }}"></a>
                </div>

                <ul class="sidebar-menu">

                        <li class="{{ Request::is('admin/dashboard') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_dashboard') }}"><i class="fas fa-hand-point-right"></i>
                                        <span>Dashboard</span></a></li>

                        <li class="{{ Request::is('admin/setting/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_setting_index') }}"><i
                                                class="fas fa-hand-point-right"></i>
                                        <span>Setting</span></a></li>

                        <li class="{{ Request::is('admin/slider/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_slider_index') }}"><i class="fas fa-hand-point-right"></i>
                                        <span>Slider</span></a></li>

                        <li class="{{ Request::is('admin/welcome-item/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_welcome_item_index') }}"><i
                                                class="fas fa-hand-point-right"></i> <span>Welcome
                                                Item</span></a></li>

                        <li class="{{ Request::is('admin/feature/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_feature_index') }}"><i
                                                class="fas fa-hand-point-right"></i>
                                        <span>Feature</span></a></li>

                        <li class="{{ Request::is('admin/counter-item/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_counter_item_index') }}"><i
                                                class="fas fa-hand-point-right"></i> <span>Counter
                                                Item</span></a></li>

                        <li class="{{ Request::is('admin/testimonial/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_testimonial_index') }}"><i
                                                class="fas fa-hand-point-right"></i>
                                        <span>Testimonial</span></a></li>

                        <li class="{{ Request::is('admin/team-member/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_team_member_index') }}"><i
                                                class="fas fa-hand-point-right"></i> <span>Team
                                                Member</span></a></li>

                        <li class="{{ Request::is('admin/faq/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_faq_index') }}"><i class="fas fa-hand-point-right"></i>
                                        <span>FAQ</span></a>
                        </li>

                        <li
                                class="nav-item dropdown {{ Request::is('admin/blog-category/*') || Request::is('admin/post/*') ? 'active' : '' }}">
                                <a href="#" class="nav-link has-dropdown"><i
                                                class="fas fa-hand-point-right"></i><span>Blog
                                                Section</span></a>
                                <ul class="dropdown-menu">
                                        <li class="{{ Request::is('admin/blog-category/*') ? 'active' : '' }}"><a
                                                        class="nav-link"
                                                        href="{{ route('admin_blog_category_index') }}"><i
                                                                class="fas fa-angle-right"></i>
                                                        Category</a></li>
                                        <li class="{{ Request::is('admin/post/*') ? 'active' : '' }}"><a
                                                        class="nav-link" href="{{ route('admin_post_index') }}"><i
                                                                class="fas fa-angle-right"></i> Post</a></li>
                                </ul>
                        </li>

                        <li class="{{ Request::is('admin/destination/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_destination_index') }}"><i
                                                class="fas fa-hand-point-right"></i>
                                        <span>Destination</span></a></li>

                        <li
                                class="{{ Request::is('admin/package/*') || Request::is('admin/package-itineraries/*') || Request::is('admin/package-itinerary-*') || Request::is('admin/package-amenities/*') || Request::is('admin/package-amenity-*') || Request::is('admin/package-photos/*') || Request::is('admin/package-photo-*') || Request::is('admin/package-videos/*') || Request::is('admin/package-video-*') || Request::is('admin/package-faqs/*') || Request::is('admin/package-faq-*') ? 'active' : '' }}">
                                <a class="nav-link" href="{{ route('admin_package_index') }}"><i
                                                class="fas fa-hand-point-right"></i>
                                        <span>Package</span></a>
                        </li>

                        <li class="nav-item dropdown {{ Request::is('admin/tour/*') ? 'active' : '' }}">
                                <a href="#" class="nav-link has-dropdown"><i
                                                class="fas fa-hand-point-right"></i><span>Tour</span></a>
                                <ul class="dropdown-menu">
                                        <li class="{{ Request::is('admin/tour/index') ? 'active' : '' }}"><a
                                                        class="nav-link" href="{{ route('admin_tour_index') }}"><i
                                                                class="fas fa-angle-right"></i> Bookings</a></li>
                                        <li class="{{ Request::is('admin/tour/pricing') ? 'active' : '' }}"><a
                                                        class="nav-link" href="{{ route('admin_tour_pricing') }}"><i
                                                                class="fas fa-angle-right"></i> Pricing</a></li>
                                </ul>
                        </li>

                        <li
                                class="nav-item dropdown {{ Request::is('admin/message') || Request::is('admin/users') ? 'active' : '' }}">
                                <a href="#" class="nav-link has-dropdown"><i
                                                class="fas fa-hand-point-right"></i><span>User
                                                Section</span></a>
                                <ul class="dropdown-menu">
                                        <li class="{{ Request::is('admin/users') ? 'active' : '' }}"><a class="nav-link"
                                                        href="{{ route('admin_users') }}"><i
                                                                class="fas fa-angle-right"></i> User</a></li>
                                        <li class="{{ Request::is('admin/message') ? 'active' : '' }}"><a
                                                        class="nav-link" href="{{ route('admin_message') }}"><i
                                                                class="fas fa-angle-right"></i> Message</a></li>
                                </ul>
                        </li>

                        <li
                                class="nav-item dropdown {{ Request::is('admin/subscribers') || Request::is('admin/subscriber-send-email') ? 'active' : '' }}">
                                <a href="#" class="nav-link has-dropdown"><i
                                                class="fas fa-hand-point-right"></i><span>Subscriber
                                                Section</span></a>
                                <ul class="dropdown-menu">
                                        <li class="{{ Request::is('admin/subscribers') ? 'active' : '' }}"><a
                                                        class="nav-link" href="{{ route('admin_subscribers') }}"><i
                                                                class="fas fa-angle-right"></i> All
                                                        Subscribers</a></li>
                                        <li class="{{ Request::is('admin/subscriber-send-email') ? 'active' : '' }}"><a
                                                        class="nav-link"
                                                        href="{{ route('admin_subscriber_send_email') }}"><i
                                                                class="fas fa-angle-right"></i> Send
                                                        Email</a></li>
                                </ul>
                        </li>

                        <li class="{{ Request::is('admin/review/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_review_index') }}"><i class="fas fa-hand-point-right"></i>
                                        <span>Reviews</span></a></li>

                        <li class="{{ Request::is('admin/amenity/*') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_amenity_index') }}"><i
                                                class="fas fa-hand-point-right"></i>
                                        <span>Amenity</span></a></li>

                        <li class="{{ Request::is('admin/home-item/index') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_home_item_index') }}"><i
                                                class="fas fa-hand-point-right"></i> <span>Home Page
                                                Item</span></a></li>

                        <li class="{{ Request::is('admin/about-item/index') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_about_item_index') }}"><i
                                                class="fas fa-hand-point-right"></i> <span>About
                                                Page Item</span></a></li>

                        <li class="{{ Request::is('admin/contact-item/index') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_contact_item_index') }}"><i
                                                class="fas fa-hand-point-right"></i> <span>Contact
                                                Page Item</span></a></li>

                        <li class="{{ Request::is('admin/term-privacy-item/index') ? 'active' : '' }}"><a
                                        class="nav-link" href="{{ route('admin_term_privacy_item_index') }}"><i
                                                class="fas fa-hand-point-right"></i>
                                        <span>Term & Privacy Page Item</span></a></li>

                        <li class="{{ Request::is('admin/profile') ? 'active' : '' }}"><a class="nav-link"
                                        href="{{ route('admin_profile') }}"><i class="fas fa-hand-point-right"></i>
                                        <span>Profile</span></a>
                        </li>

                </ul>
        </aside>
</div>