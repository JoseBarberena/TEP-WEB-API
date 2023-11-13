<?php
/* Smarty version 4.3.4, created on 2023-11-11 19:10:41
  from 'C:\XAAMP\htdocs\Web2-2023\TPE_WEB2_API\templates\salesListfilter.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.4',
  'unifunc' => 'content_654fc3a1505e14_57844607',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bc32f5a4dc0d6f4d344207536ac815e66b329937' => 
    array (
      0 => 'C:\\XAAMP\\htdocs\\Web2-2023\\TPE_WEB2_API\\templates\\salesListfilter.tpl',
      1 => 1697579964,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
),false)) {
function content_654fc3a1505e14_57844607 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php $_smarty_tpl->_subTemplateRender("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<div class="container">

  <h2><?php echo $_smarty_tpl->tpl_vars['titulo1']->value;?>
</h2>

  <h2 class="my-4 d-flex justify-content-center"><?php echo $_smarty_tpl->tpl_vars['titulo2']->value;?>
</h2>
  <table class="table">
    <thead>
      <tr>

        <th scope="col">ID</th>
        <th scope="col">Cliente</th>
        <th scope="col">Comprobante N°</th>
        <th scope="col">Fecha</th>
        <th scope="col">Vendedor</th>
        <th scope="col">Producto</th>
        <th scope="col">Cantidad</th>
        <th scope="col">Pcio U</th>
        <th scope="col">Total</th>
        <th scope="col">Delete</th>
        <th scope="col">Update</th>

      </tr>
    </thead>
    <tbody>
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['sales']->value, 'sale');
$_smarty_tpl->tpl_vars['sale']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['sale']->value) {
$_smarty_tpl->tpl_vars['sale']->do_else = false;
?>
        <tr>
          <td><a href="saleDetail/<?php echo $_smarty_tpl->tpl_vars['sale']->value->id;?>
" class="btn btn-outline-success btn-sm"><?php echo $_smarty_tpl->tpl_vars['sale']->value->id;?>
</a></td>
          <td><?php echo $_smarty_tpl->tpl_vars['sale']->value->Cliente;?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['sale']->value->Factura;?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['sale']->value->Fecha;?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['sale']->value->id_vendedor;?>
 - <?php echo $_smarty_tpl->tpl_vars['sellers']->value->Vendedor;?>
</td>  
          <td><?php echo $_smarty_tpl->tpl_vars['sale']->value->Producto;?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['sale']->value->Cantidad;?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['sale']->value->P_Unitario;?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['sale']->value->Total;?>
</td>
          <td><a href="deleteSale/<?php echo $_smarty_tpl->tpl_vars['sale']->value->id;?>
" class="btn btn-outline-danger btn-sm">Delete</a></td>
          <td><a href="saleDetail/<?php echo $_smarty_tpl->tpl_vars['sale']->value->id;?>
" class="btn btn-outline-success btn-sm">Display/Update</a>
          </td>
        </tr>
      <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </tbody>
  </table>

  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
    <button class="btn btn-outline-secondary"><a class="btn btn-secondary" href="showSales">back to top / return</a></button>
    <button class="btn btn-outline-secondary"><a class="btn btn-secondary" href="home">Home</a></button>
  </div>
</div>

<?php $_smarty_tpl->_subTemplateRender("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>   <?php }
}
