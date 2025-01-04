<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Title;

class TitleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Title';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Title());

        $grid->column('id', __('Id'));
        $grid->column('seo_title_home', __('Seo title home'));
        $grid->column('seo_des_home', __('Seo des home'));
        $grid->column('seo_key_home', __('Seo key home'));
        $grid->column('seo_title_about', __('Seo title about'));
        $grid->column('seo_des_about', __('Seo des about'));
        $grid->column('seo_key_about', __('Seo key about'));
        $grid->column('seo_title_tool', __('Seo title tool'));
        $grid->column('seo_des_tool', __('Seo des tool'));
        $grid->column('seo_key_tool', __('Seo key tool'));
        $grid->column('seo_title_services', __('Seo title services'));
        $grid->column('seo_des_services', __('Seo des services'));
        $grid->column('seo_key_services', __('Seo key services'));
        $grid->column('seo_title_category', __('Seo title category'));
        $grid->column('seo_des_category', __('Seo des category'));
        $grid->column('seo_key_category', __('Seo key category'));
        $grid->column('seo_title_contact', __('Seo title contact'));
        $grid->column('seo_des_contact', __('Seo des contact'));
        $grid->column('seo_key_contact', __('Seo key contact'));
        $grid->column('seo_title_login', __('Seo title login'));
        $grid->column('seo_des_login', __('Seo des login'));
        $grid->column('seo_key_login', __('Seo key login'));
        $grid->column('seo_title_signup', __('Seo title signup'));
        $grid->column('seo_des_signup', __('Seo des signup'));
        $grid->column('seo_key_signup', __('Seo key signup'));
        $grid->column('seo_title_policy', __('Seo title policy'));
        $grid->column('seo_des_policy', __('Seo des policy'));
        $grid->column('seo_key_policy', __('Seo key policy'));
        $grid->column('created_at', __('Created at'))->display(function ($created_at) {
            return \Carbon\Carbon::parse($created_at)->format('d-M-Y');
        });
        $grid->column('updated_at', __('Updated at'))->display(function ($updated_at) {
            return \Carbon\Carbon::parse($updated_at)->format('d-M-Y');
        });        

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Title::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('seo_title_home', __('Seo title home'));
        $show->field('seo_des_home', __('Seo des home'));
        $show->field('seo_key_home', __('Seo key home'));
        $show->field('seo_title_about', __('Seo title about'));
        $show->field('seo_des_about', __('Seo des about'));
        $show->field('seo_key_about', __('Seo key about'));
        $show->field('seo_title_tool', __('Seo title tool'));
        $show->field('seo_des_tool', __('Seo des tool'));
        $show->field('seo_key_tool', __('Seo key tool'));
        $show->field('seo_title_services', __('Seo title services'));
        $show->field('seo_des_services', __('Seo des services'));
        $show->field('seo_key_services', __('Seo key services'));
        $show->field('seo_title_category', __('Seo title category'));
        $show->field('seo_des_category', __('Seo des category'));
        $show->field('seo_key_category', __('Seo key category'));
        $show->field('seo_title_contact', __('Seo title contact'));
        $show->field('seo_des_contact', __('Seo des contact'));
        $show->field('seo_key_contact', __('Seo key contact'));
        $show->field('seo_title_login', __('Seo title login'));
        $show->field('seo_des_login', __('Seo des login'));
        $show->field('seo_key_login', __('Seo key login'));
        $show->field('seo_title_signup', __('Seo title signup'));
        $show->field('seo_des_signup', __('Seo des signup'));
        $show->field('seo_key_signup', __('Seo key signup'));
        $show->field('seo_title_policy', __('Seo title policy'));
        $show->field('seo_des_policy', __('Seo des policy'));
        $show->field('seo_key_policy', __('Seo key policy'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Title());

        $form->text('seo_title_home', __('Seo title home'));
        $form->textarea('seo_des_home', __('Seo des home'));
        $form->textarea('seo_key_home', __('Seo key home'));
        $form->text('seo_title_about', __('Seo title about'));
        $form->textarea('seo_des_about', __('Seo des about'));
        $form->textarea('seo_key_about', __('Seo key about'));
        $form->text('seo_title_tool', __('Seo title tool'));
        $form->textarea('seo_des_tool', __('Seo des tool'));
        $form->textarea('seo_key_tool', __('Seo key tool'));
        $form->text('seo_title_services', __('Seo title services'));
        $form->textarea('seo_des_services', __('Seo des services'));
        $form->textarea('seo_key_services', __('Seo key services'));
        $form->text('seo_title_category', __('Seo title category'));
        $form->textarea('seo_des_category', __('Seo des category'));
        $form->textarea('seo_key_category', __('Seo key category'));
        $form->text('seo_title_contact', __('Seo title contact'));
        $form->textarea('seo_des_contact', __('Seo des contact'));
        $form->textarea('seo_key_contact', __('Seo key contact'));
        $form->text('seo_title_login', __('Seo title login'));
        $form->textarea('seo_des_login', __('Seo des login'));
        $form->textarea('seo_key_login', __('Seo key login'));
        $form->text('seo_title_signup', __('Seo title signup'));
        $form->textarea('seo_des_signup', __('Seo des signup'));
        $form->textarea('seo_key_signup', __('Seo key signup'));
        $form->text('seo_title_policy', __('Seo title policy'));
        $form->textarea('seo_des_policy', __('Seo des policy'));
        $form->textarea('seo_key_policy', __('Seo key policy'));

        return $form;
    }
}
