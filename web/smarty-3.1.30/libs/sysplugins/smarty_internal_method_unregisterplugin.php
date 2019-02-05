<?php

/**
 * Smarty Method UnregisterPlugin
 *
 * Smarty::unregisterPlugin() method
 *
 * @package    Smarty
 * @subpackage PluginsInternal
 * @author     Uwe Tews
 */
class Smarty_Internal_Method_UnregisterPlugin
{
    /**
     * Valid for Smarty and templates object
     *
     * @var int
     */
    public $objMap = 3;

    /**
     * Registers plugin to be used in templates
     *
     * @api  Smarty::unregisterPlugin()
     * @link http://www.smarty.net/docs/en/api.unregister.plugin.tpl
     *
     * @param \Smarty_Internal_TemplateBase|\Smarty_Internal_Template|\Smarty $obj
     * @param  string                                                         $type plugin type
     * @param  string                                                         $name name of templates tag
     *
     * @return \Smarty|\Smarty_Internal_Template
     */
    public function unregisterPlugin(Smarty_Internal_TemplateBase $obj, $type, $name)
    {
        $smarty = isset($obj->smarty) ? $obj->smarty : $obj;
        if (isset($smarty->registered_plugins[ $type ][ $name ])) {
            unset($smarty->registered_plugins[ $type ][ $name ]);
        }
        return $obj;
    }
}