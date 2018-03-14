<?php
Route::get('/','HomeController@index')->name('home.home');
Route::get('/eventShow/{id}','HomeController@eventShow');
Route::get('about-us','HomeController@getAbout')->name('about-us');
Route::get('teacher','HomeController@getTeachers')->name('teacher.show');
Route::get('current/student','HomeController@getCurrentStudent')->name('current.student');
Route::get('/currentStudentInfo/{id}','HomeController@currentStudentInfo');
Route::get('ex/student','HomeController@getExStudent')->name('ex.student');
Route::get('/exStudentInfo/{id}','HomeController@exStudentInfo');
Route::get('gallery','HomeController@getGallery')->name('gallery');
Route::get('contact','HomeController@getContact')->name('contact');
Route::post('contact','HomeController@postContact')->name('contact.post');
Route::get('blog','Backend\BlogController@getBlog')->name('blog');
Route::get('blog/{id}/show','Backend\BlogController@getBlogShow')->name('blog.show');
//Auth::routes();

Route:: get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route:: post('login', 'Auth\LoginController@login');
Route:: post('logout', 'Auth\LoginController@logout')->name('logout');
Route:: post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
Route:: get('password/reset', 'Auth\ForgotPasswordController@ashowLinkRequestForm')->name('password.request');
Route:: post('password/reset', 'Auth\ResetPasswordController@reset');
Route:: get('password/reset/{token}', 'Auth\ResetPasswordController@ashowResetForm')->name('password.reset');
Route:: get('register', 'Auth\RegisterController@showRegistrationForm');
Route:: post('register', 'Auth\RegisterController@register')->name('register');
Route:: get('user/activation/{token}', 'Auth\RegisterController@userActivation');

Route::group( ['middleware' => ['auth']], function() {
    // Start Backend Controller
    Route::get('dashboard','Backend\AdminController@getDashboard')->name('dashboard');
    Route::resource('users', 'UserController');
    Route::resource('roles', 'RoleController');
    Route::resource('permissions', 'Backend\PermissionController');
    Route::resource('posts', 'PostController');
    Route::resource('gsetting', 'Backend\GenSettingController');
    Route::resource('about', 'Backend\AboutController');
    Route::resource('achieve', 'Backend\AchieveController');
    Route::resource('teachers', 'Backend\TeacherController');
    Route::get('teacher/status', 'Backend\TeacherController@getTeacherStatus')->name('teacher.status');
    Route::post('teacher/status/{id}', 'Backend\TeacherController@postTeacherStatus')->name('teacher.status.update');

	Route::resource('current-teacher', 'Backend\CurrentTeacherController');
    Route::get('current/teacher/profile/setting', 'Backend\CurrentTeacherController@currentTeacherProfileSetting')->name('current.teacher.profile.setting');
    Route::post('current/teacher/profile/status/{id}', 'Backend\CurrentTeacherController@currentTeacherProfileStatus')->name('current.teacher.profile.status');
    Route::post('current/teacher/profile/update/{id}', 'Backend\CurrentTeacherController@postProfileupdate')->name('current.teacher.profile.update');
    Route::post('current/teacher/profile/password/{id}', 'Backend\CurrentTeacherController@postPasswordupdate')->name('current.teacher.profile.password');
    Route::post('current/teacher/profile/myself/{id}', 'Backend\CurrentTeacherController@postMyselfdupdate')->name('current.teacher.profile.myself');
    Route::get('current/teacher/single/profile', 'Backend\CurrentTeacherController@getTeacherProfile')->name('current.teacher.single.profile');

	Route::resource('ex-teacher', 'Backend\ExTeacherController');
    Route::get('ex/teacher/profile/setting', 'Backend\ExTeacherController@exTeacherProfileSetting')->name('ex.teacher.profile.setting');
    Route::post('ex/teacher/profile/status/{id}', 'Backend\ExTeacherController@exTeacherProfileStatus')->name('ex.teacher.profile.status');
    Route::post('ex/teacher/profile/update/{id}', 'Backend\ExTeacherController@postProfileupdate')->name('ex.teacher.profile.update');
    Route::post('ex/teacher/profile/password/{id}', 'Backend\ExTeacherController@postPasswordupdate')->name('ex.teacher.profile.password');
    Route::post('ex/teacher/profile/myself/{id}', 'Backend\ExTeacherController@postMyselfdupdate')->name('ex.teacher.profile.myself');
    Route::get('ex/teacher/single/profile', 'Backend\ExTeacherController@getExTeacherProfile')->name('ex.teacher.single.profile');

    Route::resource('students', 'Backend\StudentController');

    Route::get('student/status', 'Backend\StudentController@getStudentStatus')->name('student.status');
    Route::post('student/status/{id}', 'Backend\StudentController@updateStudentStatus')->name('student.status.update');


    Route::resource('current-student', 'Backend\CurrentStudentController');
    Route::get('current/student/profile/setting', 'Backend\CurrentStudentController@currentStudentProfileSetting')->name('current.student.profile.setting');
    Route::post('current/student/profile/status/{id}', 'Backend\CurrentStudentController@currentStudentProfileStatus')->name('current.student.profile.status');
    Route::post('current/student/profile/update/{id}', 'Backend\CurrentStudentController@postProfileupdate')->name('current.student.profile.update');
    Route::post('current/student/profile/password/{id}', 'Backend\CurrentStudentController@postPasswordupdate')->name('current.student.profile.password');
    Route::post('current/student/profile/myself/{id}', 'Backend\CurrentStudentController@postMyselfdupdate')->name('current.student.profile.myself');
    Route::get('current/student/single/profile', 'Backend\CurrentStudentController@getCurrentStudentProfile')->name('current.student.single.profile');

    Route::resource('ex-student', 'Backend\ExStudentController');
    Route::post('ex/student/profile/status/{id}', 'Backend\ExStudentController@exStudentProfileStatus')->name('ex.student.profile.status');
    Route::get('ex/student/profile/setting', 'Backend\ExStudentController@exStudentProfileSetting')->name('ex.student.profile.setting');
    Route::post('ex/student/profile/update/{id}', 'Backend\ExStudentController@postProfileupdate')->name('ex.student.profile.update');
    Route::post('ex/student/profile/password/{id}', 'Backend\ExStudentController@postPasswordupdate')->name('ex.student.profile.password');
    Route::post('ex/student/profile/myself/{id}', 'Backend\ExStudentController@postMyselfdupdate')->name('ex.student.profile.myself');
    Route::get('ex/student/single/profile', 'Backend\ExStudentController@getExStudentProfile')->name('ex.student.single.profile');

	Route::resource('gardians', 'Backend\GardianController');
    Route::resource('galleries', 'Backend\GalleryController');
    Route::resource('slider', 'Backend\SliderController');
    Route::resource('notices', 'Backend\NoticeController');
    Route::resource('event', 'Backend\SeventController');

    Route::resource('blog-category', 'Backend\BlogCategoryController');
    Route::resource('blogs', 'Backend\BlogController');
    Route::get('blog/post', 'Backend\BlogController@getBlogPost')->name('blog.post');
    Route::post('blog/post', 'Backend\BlogController@postBlogStore')->name('blog.post.store');

    Route::resource('testmonials', 'Backend\TestmonialController');
    Route::get('testmonial/post', 'Backend\TestmonialController@getTestmonialPost')->name('testmonial.post');
    Route::post('testmonial/post', 'Backend\TestmonialController@postTestmonialStore')->name('testmonial.post.store');
});
    
