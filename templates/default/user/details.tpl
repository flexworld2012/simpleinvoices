{*
* Script: details.tpl
* 	Biller details template
*
* Last edited:
* 	 2008-08-25
*
* License:
*	 GPL v3 or above
*}
<form name="frmpost" action="index.php?module=billers&view=save&id={$smarty.get.id}" method="post" id="frmpost" onSubmit="return checkForm(this);">


{if $smarty.get.action== 'view' }

<b>{$LANG.biller} :: <a
	href="index.php?module=billers&view=details&id={$biller.id}&action=edit">{$LANG.edit}</a></b>
<hr></hr>
<table align="center">
	<tr>
		<td class="details_screen">{$LANG.email}</td>
		<td>{$user.email}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.role}</td>
		<td>{$user.role_name}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.password}</td>
		<td>*********</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.enabled}</td>
		<td>{$biller.wording_for_enabled}</td>
	</tr>
</table>
{/if}


{if $smarty.get.action== 'view' }
<hr></hr>
<a href="?module=billers&view=details&action=edit&id={$biller.id}">{$LANG.edit}</a>
{/if}


{if $smarty.get.action== 'edit' }

<b>{$LANG.biller_edit}</b>
<hr></hr>
<table align="center">
	<tr>
		<td class="details_screen">{$LANG.biller_id}</td>
		<td>{$biller.id}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.biller_name} 
			<a 
					class="cluetip"
					href="#"
					rel="docs.php?t=help&p=required_field"
					title="{$LANG.Required_Field}"
			>
			<img src="./images/common/required-small.png"></img></a></td>
		<td><input type=text name="name" value="{$biller.name|regex_replace:"/[\\\]/":""}" size=50 id="name" class="required" onblur="checkField(this);"/></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street}</td>
		<td><input type=text name="street_address"
			value="{$biller.street_address}" size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street2}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=street2"
				title="{$LANG.street2}"
			> 
			<img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="street_address2"
			value="{$biller.street_address2}" size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.city}</td>
		<td><input type=text name="city" value="{$biller.city}" size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.zip}</td>
		<td><input type=text name="zip_code" value="{$biller.zip_code}"
			size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.state}</td>
		<td><input type=text name="state" value="{$biller.state}" size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.country}</td>
		<td><input type=text name="country" value="{$biller.country}"
			size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.mobile_phone}</td>
		<td><input type=text name="mobile_phone"
			value="{$biller.mobile_phone}" size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.phone}</td>
		<td><input type=text name="phone" value="{$biller.phone}" size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.fax}</td>
		<td><input type=text name="fax" value="{$biller.fax}" size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.email}</td>
		<td><input type=text name="email" value="{$biller.email}" size=50 /></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.biller_cf1}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=custom_fields"
				title="{$LANG.Custom_Fields}"
			> 
			<img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="custom_field1"
			value="{$biller.custom_field1}" size=50</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.biller_cf2}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=custom_fields"
				title="{$LANG.Custom_Fields}"
			> 
			<img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="custom_field2"
			value="{$biller.custom_field2}" size=50</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.biller_cf3}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=custom_fields"
				title="{$LANG.Custom_Fields}"
			> 
			<img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="custom_field3"
			value="{$biller.custom_field3}" size=50</td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.biller_cf4}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=custom_fields"
				title="{$LANG.Custom_Fields}"
			> 
			<img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="custom_field4"
			value="{$biller.custom_field4}" size=50</td>
	</tr>
	<tr>
		<td class="details_screen">
		{$LANG.logo_file}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=insert_biller_text"
				title="{$LANG.Logo_File}"
			> 
			<img
			src="./images/common/help-small.png"></img></a></td>
		<td>
			{html_options name=logo output=$files values=$files selected=$biller.logo }
		</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.invoice_footer}</td>
		<td><textarea  name="footer" class="editor" rows=4 cols=50>{$biller.footer|unescape}</textarea></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.notes}</td>
		<td><textarea  name="notes"class="editor" rows=8 cols=50>{$biller.notes|unescape}</textarea></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.enabled}</td>
		<td>
		{html_options name=enabled options=$enabled selected=$biller.enabled}
		</td>
	</tr>
	{*
		{showCustomFields categorieId="1" itemId=$smarty.get.id}
	*}

</table>
{/if} 
{if $smarty.get.action== 'edit' }
	<table class="buttons" align="center">
    <tr>
        <td>
            <button type="submit" class="positive" name="save_biller" value="{$LANG.save_biller}">
                <img class="button_img" src="./images/common/tick.png" alt=""/> 
                {$LANG.save}
            </button>

            <input type="hidden" name="op" value="edit_biller">
   			<input type="hidden" name="categorie" value="1" />

            <a href="./index.php?module=billers&view=manage" class="negative">
                <img src="./images/common/cross.png" alt=""/>
                {$LANG.cancel}
            </a>
    
        </td>
    </tr>
	</table>
	{/if}
</form>