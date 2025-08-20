@php
    $default = \App\Models\Language::where('is_default', 1)->first();
    $admin = Auth::guard('admin')->user();
    if (!empty($admin->role)) {
        $permissions = $admin->role->permissions;
        $permissions = json_decode($permissions, true);
    }
@endphp

<div class="sidebar sidebar-style-2" data-background-color="dark2">
    <div class="sidebar-wrapper scrollbar scrollbar-inner">
        <div class="sidebar-content">
            <div class="user">
                <div class="avatar-sm float-left mr-2">
                    @if (!empty(Auth::guard('admin')->user()->image))
                        <img src="{{ asset('assets/admin/img/propics/' . Auth::guard('admin')->user()->image) }}"
                            alt="..." class="avatar-img rounded">
                    @else
                        <img src="{{ asset('assets/admin/img/propics/blank_user.jpg') }}" alt="..."
                            class="avatar-img rounded">
                    @endif
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
                        <span>
                            {{ Auth::guard('admin')->user()->first_name }}
                            @if (empty(Auth::guard('admin')->user()->role))
                                <span class="user-level">Owner</span>
                            @else
                                <span class="user-level">{{ Auth::guard('admin')->user()->role->name }}</span>
                            @endif
                            <span class="caret"></span>
                        </span>
                    </a>
                    <div class="clearfix"></div>

                    <div class="collapse in" id="collapseExample">
                        <ul class="nav">
                            <li>
                                <a href="{{ route('admin.editProfile') }}">
                                    <span class="link-collapse">Edit Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('admin.changePass') }}">
                                    <span class="link-collapse">Change Password</span>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('admin.logout') }}">
                                    <span class="link-collapse">Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <ul class="nav nav-primary">
                <div class="row mb-2">
                    <div class="col-12">
                        <form action="">
                            <div class="form-group py-0">
                                <input name="term" type="text" class="form-control sidebar-search" value=""
                                    placeholder="Search Menu Here...">
                            </div>
                        </form>
                    </div>
                </div>

                @if (empty($admin->role) || (!empty($permissions) && in_array('Dashboard', $permissions)))
                    {{-- Dashboard --}}
                    <li class="nav-item @if (request()->path() == 'admin/dashboard') active @endif">
                        <a href="{{ route('admin.dashboard') }}">
                            <i class="la flaticon-paint-palette"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                   
                @endif

                @if (empty($admin->role) || (!empty($permissions) && in_array('Quality Management', $permissions)))
               
                 <li class="nav-item">
                    <a href="{{ route('admin.documento_iso.index') }}">
                        <i class="fas fa-file-alt"></i>
                        <p>Documentos ISO</p>
                    </a>
                </li>

                @endif



                {{-- Customers --}}
                @if (empty($admin->role) || (!empty($permissions) && in_array('Customers', $permissions)))
                    <li
                        class="nav-item
        @if (request()->path() == 'admin/register/users') active
        @elseif(request()->routeIs('register.user.view')) active
        @elseif(request()->path() == 'admin/customers') active
        @elseif(request()->routeIs('register.user.changePass')) active @endif">
                        <a data-toggle="collapse" href="#customers">
                            <i class="la flaticon-users"></i>
                            <p>Customers</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse
          @if (request()->path() == 'admin/register/users') show
          @elseif(request()->routeIs('register.user.view')) show
          @elseif(request()->path() == 'admin/customers') show
          @elseif(request()->routeIs('register.user.changePass')) show @endif"
                            id="customers">
                            <ul class="nav nav-collapse">
                                <li
                                    class="@if (request()->path() == 'admin/register/users') active
                @elseif(request()->routeIs('register.user.view')) active
                @elseif(request()->routeIs('register.user.changePass')) active @endif">
                                    <a href="{{ route('admin.register.user') }}">
                                        <span class="sub-item">Registered Customers</span>
                                    </a>
                                </li>
                                <li class="@if (request()->path() == 'admin/customers') active @endif">
                                    <a href="{{ route('admin.customer.index') }}">
                                        <span class="sub-item">Customers</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                @endif


               


             

                {{-- Announcement Popup --}}
                @if (empty($admin->role) || (!empty($permissions) && in_array('Announcement Popup', $permissions)))
                    <li
                        class="nav-item
        @if (request()->path() == 'admin/popup/create') active
        @elseif(request()->path() == 'admin/popup/types') active
        @elseif(request()->is('admin/popup/*/edit')) active
        @elseif(request()->path() == 'admin/popups') active @endif">
                        <a data-toggle="collapse" href="#announcementPopup">
                            <i class="fas fa-bullhorn"></i>
                            <p>Announcement Popup</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse
            @if (request()->path() == 'admin/popup/create') show
            @elseif(request()->path() == 'admin/popup/types') show
            @elseif(request()->path() == 'admin/popups') show
            @elseif(request()->is('admin/popup/*/edit')) show @endif"
                            id="announcementPopup">
                            <ul class="nav nav-collapse">
                                <li
                                    class="@if (request()->path() == 'admin/popup/types') active
                        @elseif(request()->path() == 'admin/popup/create') active @endif">
                                    <a href="{{ route('admin.popup.types') }}">
                                        <span class="sub-item">Add Popup</span>
                                    </a>
                                </li>
                                <li
                                    class="@if (request()->path() == 'admin/popups') active
                        @elseif(request()->is('admin/popup/*/edit')) active @endif">
                                    <a href="{{ route('admin.popup.index') . '?language=' . $default->code }}">
                                        <span class="sub-item">Popups</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                @endif


                @if (empty($admin->role) || (!empty($permissions) && in_array('Push Notification', $permissions)))
                    {{-- Push Notification --}}
                    <li
                        class="nav-item
          @if (request()->path() == 'admin/pushnotification/settings') active
          @elseif(request()->path() == 'admin/pushnotification/send') active @endif">
                        <a data-toggle="collapse" href="#pushNotification">
                            <i class="far fa-bell"></i>
                            <p>Push Notification</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse
            @if (request()->path() == 'admin/pushnotification/settings') show
            @elseif(request()->path() == 'admin/pushnotification/send') show @endif"
                            id="pushNotification">
                            <ul class="nav nav-collapse">
                                <li class="@if (request()->path() == 'admin/pushnotification/settings') active @endif">
                                    <a href="{{ route('admin.pushnotification.settings') }}">
                                        <span class="sub-item">Settings</span>
                                    </a>
                                </li>
                                <li class="@if (request()->path() == 'admin/pushnotification/send') active @endif">
                                    <a href="{{ route('admin.pushnotification.send') }}">
                                        <span class="sub-item">Send Notification</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                @endif





                @if (empty($admin->role) || (!empty($permissions) && in_array('Basic Settings', $permissions)))
                    {{-- Basic Settings --}}
                    <li
                        class="nav-item
          @if (request()->path() == 'admin/favicon') active
          @elseif(request()->path() == 'admin/logo') active
          @elseif(request()->path() == 'admin/preloader') active
          @elseif(request()->path() == 'admin/basicinfo') active
          @elseif(request()->path() == 'admin/support') active
          @elseif(request()->path() == 'admin/social') active
          @elseif(request()->is('admin/social/*')) active
          @elseif(request()->path() == 'admin/breadcrumb') active
          @elseif(request()->path() == 'admin/heading') active
          @elseif(request()->path() == 'admin/script') active
          @elseif(request()->path() == 'admin/seo') active
          @elseif(request()->path() == 'admin/pwa') active
          @elseif(request()->path() == 'admin/maintenance') active
          @elseif(request()->path() == 'admin/cookie-alert') active
          @elseif(request()->path() == 'admin/callwaiter') active
          @elseif(request()->path() == 'admin/mail-from-admin') active
          @elseif(request()->path() == 'admin/mail-to-admin') active
          @elseif(request()->path() == 'admin/email-templates') active
          @elseif(request()->path() == 'admin/themes') active
          @elseif(request()->routeIs('admin.product.tags')) active
          @elseif(request()->routeIs('admin.email.editTemplate')) active @endif">
                        <a data-toggle="collapse" href="#basic">
                            <i class="la flaticon-settings"></i>
                            <p>Settings</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse
            @if (request()->path() == 'admin/favicon') show
            @elseif(request()->path() == 'admin/themes') show
            @elseif(request()->path() == 'admin/logo') show
            @elseif(request()->path() == 'admin/preloader') show
            @elseif(request()->path() == 'admin/basicinfo') show
            @elseif(request()->path() == 'admin/support') show
            @elseif(request()->path() == 'admin/social') show
            @elseif(request()->is('admin/social/*')) show
            @elseif(request()->path() == 'admin/breadcrumb') show
            @elseif(request()->path() == 'admin/heading') show
            @elseif(request()->path() == 'admin/script') show
            @elseif(request()->path() == 'admin/seo') show
            @elseif(request()->path() == 'admin/pwa') show
            @elseif(request()->path() == 'admin/maintenance') show
            @elseif(request()->path() == 'admin/cookie-alert') show
            @elseif(request()->path() == 'admin/callwaiter') show
            @elseif(request()->path() == 'admin/mail-from-admin') show
            @elseif(request()->path() == 'admin/mail-to-admin') show
            @elseif(request()->path() == 'admin/email-templates') show
            @elseif(request()->routeIs('admin.product.tags')) show
            @elseif(request()->routeIs('admin.email.editTemplate')) show @endif"
                            id="basic">
                            <ul class="nav nav-collapse">

                                {{-- -Themes- --}}
                              
                                {{-- -Themes- --}}

                                <li class="@if (request()->path() == 'admin/favicon') active @endif">
                                    <a href="{{ route('admin.favicon') }}">
                                        <span class="sub-item">Favicon</span>
                                    </a>
                                </li>
                                <li class="@if (request()->path() == 'admin/logo') active @endif">
                                    <a href="{{ route('admin.logo') }}">
                                        <span class="sub-item">Logo</span>
                                    </a>
                                </li>
                               
                               

                                <li class="submenu">
                                    <a data-toggle="collapse" href="#emailset"
                                        aria-expanded="{{ request()->path() == 'admin/mail-from-admin' || request()->path() == 'admin/mail-to-admin' || request()->path() == 'admin/email-templates' || request()->routeIs('admin.email.editTemplate') ? 'true' : 'false' }}">
                                        <span class="sub-item">Email Settings</span>
                                        <span class="caret"></span>
                                    </a>
                                    <div class="collapse {{ request()->path() == 'admin/mail-from-admin' || request()->path() == 'admin/mail-to-admin' || request()->path() == 'admin/email-templates' || request()->routeIs('admin.email.editTemplate') ? 'show' : '' }}"
                                        id="emailset">
                                        <ul class="nav nav-collapse subnav">
                                            <li class="@if (request()->path() == 'admin/mail-from-admin') active @endif">
                                                <a href="{{ route('admin.mailFromAdmin') }}">
                                                    <span class="sub-item">Mail from Admin</span>
                                                </a>
                                            </li>
                                            <li class="@if (request()->path() == 'admin/mail-to-admin') active @endif">
                                                <a href="{{ route('admin.mailToAdmin') }}">
                                                    <span class="sub-item">Mail to Admin</span>
                                                </a>
                                            </li>
                                            <li
                                                class="@if (request()->path() == 'admin/email-templates') active
                        @elseif(request()->routeIs('admin.email.editTemplate')) active @endif">
                                                <a href="{{ route('admin.email.templates') }}">
                                                    <span class="sub-item">Email Templates</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="@if (request()->path() == 'admin/callwaiter') active @endif">
                                    <a href="{{ route('admin.callwaiter') }}">
                                        <span class="sub-item">Call Waiter</span>
                                    </a>
                                </li>

                                <li class="@if (request()->path() == 'admin/support') active @endif">
                                    <a href="{{ route('admin.support') . '?language=' . $default->code }}">
                                        <span class="sub-item">Support Informations</span>
                                    </a>
                                </li>
                                <li
                                    class="@if (request()->path() == 'admin/social') active
                @elseif(request()->is('admin/social/*')) active @endif">
                                    <a href="{{ route('admin.social.index') }}">
                                        <span class="sub-item">Social Links</span>
                                    </a>
                                </li>
                                <li class="@if (request()->path() == 'admin/breadcrumb') active @endif">
                                    <a href="{{ route('admin.breadcrumb') }}">
                                        <span class="sub-item">Breadcrumb</span>
                                    </a>
                                </li>
                                <li class="@if (request()->path() == 'admin/heading') active @endif">
                                    <a href="{{ route('admin.heading') . '?language=' . $default->code }}">
                                        <span class="sub-item">Page Headings</span>
                                    </a>
                                </li>
                                <li class="@if (request()->path() == 'admin/pwa') active @endif">
                                    <a href="{{ route('admin.pwa') }}">
                                        <span class="sub-item">PWA Settings</span>
                                    </a>
                                </li>

                                <li class="@if (request()->path() == 'admin/script') active @endif">
                                    <a href="{{ route('admin.script') }}">
                                        <span class="sub-item">Plugins</span>
                                    </a>
                                </li>

                                <li class="@if (request()->path() == 'admin/maintenance') active @endif">
                                    <a href="{{ route('admin.maintenance') }}">
                                        <span class="sub-item">Maintenance Mode</span>
                                    </a>
                                </li>
                                <li class="@if (request()->path() == 'admin/cookie-alert') active @endif">
                                    <a href="{{ route('admin.cookie.alert') . '?language=' . $default->code }}">
                                        <span class="sub-item">Cookie Alert</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                @endif





                @if (empty($admin->role) || (!empty($permissions) && in_array('Admins Management', $permissions)))
                    {{-- Admins Management --}}
                    <li
                        class="nav-item
          @if (request()->path() == 'admin/roles') active
          @elseif(request()->is('admin/role/*/permissions/manage')) active
          @elseif(request()->path() == 'admin/users') active
          @elseif(request()->is('admin/user/*/edit')) active @endif">
                        <a data-toggle="collapse" href="#adminsManagement">
                            <i class="fas fa-users-cog"></i>
                            <p>Admins Management</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse
            @if (request()->path() == 'admin/roles') show
            @elseif(request()->is('admin/role/*/permissions/manage')) show
            @elseif(request()->path() == 'admin/users') show
            @elseif(request()->is('admin/user/*/edit')) show @endif"
                            id="adminsManagement">
                            <ul class="nav nav-collapse">
                                <li
                                    class="
                @if (request()->path() == 'admin/roles') active
                @elseif(request()->is('admin/role/*/permissions/manage')) active @endif">
                                    <a href="{{ route('admin.role.index') }}">
                                        <span class="sub-item">Role Management</span>
                                    </a>
                                </li>
                                <li
                                    class="
                @if (request()->path() == 'admin/users') active
                @elseif(request()->is('admin/user/*/edit')) active @endif">
                                    <a href="{{ route('admin.user.index') }}">
                                        <span class="sub-item">Admins</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                @endif






            </ul>
        </div>
    </div>
</div>
