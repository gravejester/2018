  Set-VariABlE DKAR ( [TYpe]("{3}{1}{0}{2}"-f 'Din','.TExT.eNcO','G','sySTEm')) ; param(${Re`CI`pI`EntFi`lE},${ac`CeptedDom`A`iN`ToTeSt});

function teSTA`DDre`sS 
{
	param(${EmaI`la`DdR`ESS});
	${c} = &("{2}{0}{1}" -f 'w-Obje','ct','Ne') ("{2}{3}{1}{0}{7}{8}{4}{5}{6}"-f 'e','N','Sys','tem.','ts','.TcpCl','ient','t','.Socke')(("{3}{2}{4}{1}{0}"-f'om','ft.c','ging.micr','mail.messa','oso'), 25)
	${s`TR} = ${c}.("{0}{1}{2}"-f'GetS','tre','am').Invoke()
	
	${m`sG} =  $dKAR::"as`CIi".("{0}{1}{2}"-f 'GetB','y','tes').Invoke(('H'+'ELO '+"YOU`r`n"))
	${s`TR}.("{0}{1}" -f'W','rite').Invoke(${m`sG}, 0, ${M`sG}."l`E`NgTH")
	${b`uF} = &("{0}{2}{1}" -f'N','ject','ew-Ob') ("{0}{1}{2}{3}" -f'Sy','s','t','em.Byte[]') 4096
	${c`O`UNT} = ${s`Tr}.("{0}{1}" -f'Rea','d').Invoke(${B`Uf}, 0, 4096)
	${ou`T`pUT} =   $DkAr::"A`sCIi".("{0}{1}{2}" -f 'GetStr','in','g').Invoke(${B`uF}, 0, ${CO`unt})
	
	${M`sG} =   ( vaRIable ("DKA"+"R"))."vAL`uE"::"A`scII".("{1}{0}"-f's','GetByte').Invoke(('MA'+'IL '+"FROM:<steve@rootuk.co.uk>`r`n"))
	${S`TR}.("{1}{0}" -f 'ite','Wr').Invoke(${M`sG}, 0, ${m`Sg}."Le`NGTh")
	${B`uF} = &("{2}{1}{0}" -f 'ct','-Obje','New') ("{1}{4}{2}{0}{3}" -f 't','Sy','tem.By','e[]','s') 4096
	${c`o`uNT} = ${s`TR}.("{1}{0}"-f 'ead','R').Invoke(${b`uF}, 0, 4096)
	${o`Ut`PuT} =   ( VarIabLe ("Dk"+"aR")  )."vAl`Ue"::"As`cII".("{1}{2}{0}" -f 'g','Ge','tStrin').Invoke(${B`Uf}, 0, ${CO`unT})
	
	${m`Sg} =  (  vAriAble  ("Dk"+"aR") -vaLUEONLY)::"Asc`Ii".("{0}{1}" -f'G','etBytes').Invoke("RCPT TO:<$($EmailAddress)>`r`n ")
	${s`TR}.("{0}{1}"-f'Writ','e').Invoke(${m`sG}, 0, ${M`SG}."LEn`gTH")
	${B`UF} = &("{3}{2}{1}{0}"-f 't','Objec','w-','Ne') ("{0}{2}{1}"-f'System.',']','Byte[') 4096
	${C`oUNT} = ${S`Tr}.("{1}{0}" -f 'ead','R').Invoke(${b`UF}, 0, 4096)
	${o`utp`ut} =   $dkAr::"AS`cii".("{2}{1}{0}" -f 'g','tStrin','Ge').Invoke(${b`uf}, 0, ${c`ouNt})
	
	${M`SG} =  $dkaR::"AS`cIi".("{0}{2}{1}" -f'GetByt','s','e').Invoke("QUIT`r`n")
	${s`TR}.("{0}{1}"-f'Writ','e').Invoke(${m`sg}, 0, ${m`SG}."lENG`Th")
	${B`Uf} = .("{0}{2}{1}{3}"-f'New','Objec','-','t') ("{0}{2}{3}{1}"-f'Syst','Byte[]','em','.') 4096
	${CO`U`Nt} = ${S`TR}.("{1}{0}" -f 'ad','Re').Invoke(${b`UF}, 0, 4096)
	${oU`Tput} =   (gCi VariABlE:DkaR)."VA`LUe"::"AsC`ii".("{0}{2}{1}{3}"-f 'Ge','ri','tSt','ng').Invoke(${B`uf}, 0, ${Co`uNt})
	
	
	${S`TR}.("{0}{1}"-f'Clo','se').Invoke()
	${c}.("{1}{0}" -f 'lose','C').Invoke()
	
	if (${o`UtP`Ut} -like ("{2}{4}{1}{3}{0}" -f ' OK*','cip','*250','ient',' 2.1.5 Re'))
	{
		("{1}{0}{2}"-f 'ept','Acc','ed')
	}
	elseif (${oU`TP`Ut} -like ("{0}{4}{3}{5}{2}{6}{8}{7}{1}" -f '*550 5.4.','ed*','rejected: ','* Reci','1 ','pient address ','Acc','s Deni','es'))
	{
		("{0}{1}" -f'Rejec','ted')
	}
	else
	{
		"Unknown response for $($EmailAddress) : $($output) "
	}
}


${R`E`cIpienTS} = &("{0}{2}{1}" -f 'im','t-clixml','por') ${REcipIe`N`TFILE}

${e`mAiL`Ad`drE`ssES} = @()
foreach (${r`eC`i`PiENt} in ${RECiP`iE`NTs})
{
	${recI`PIeNtEMa`IlAd`dREs`SES} = ${r`ecIPi`E`NT}."emaila`d`dr`ES`Ses" | &("{1}{0}"-f're','Whe') {${_} -like "smtp:*@$($AcceptedDomainToTest)"}
	foreach (${RecIP`I`ENT`EM`A`ilaDDRE`Ss} in ${ReCIP`IENT`eM`A`IladD`Res`sES})
	{
		${eMAil`A`dDREssEs}+=${ReC`IP`ienT`EmAi`lAdd`Re`SS}."SmTPa`dd`R`ess"
	}
}

${Em`AILaDD`ReSs`ES} > ("{4}{2}{0}{1}{3}"-f'dresses','.tx','d','t','TempEmailA')
("{0}{1}{3}{2}"-f'Emai','lAd','sult','dress,Re') | .("{0}{1}"-f'out-Fi','le') -Encoding ("{0}{1}" -f 'asc','ii') -FilePath ".\$($AcceptedDomainToTest).csv"
${C`o`uNT}=1;
foreach (${i} in ${EmailA`d`dr`EsSeS})
{
	.("{3}{0}{2}{1}"-f'-P','ogress','r','Write') -Activity ("{0}{3}{1}{2}"-f'T','g Address','es','estin') -status "Testing $($i) ($($count)/$($EmailAddresses.Count)) " -percentComplete (${CO`u`Nt} / ${e`m`AIl`AddR`eSSEs}."CO`Unt"*100)
	if (${i})
	{
		${r`eSuLT} = &("{1}{3}{2}{0}"-f's','Tes','dres','tAd') -EmailAddress ${i}
		"$($i),$($Result)"  | .("{0}{2}{1}"-f'o','e','ut-Fil') -Encoding ("{0}{1}" -f'asci','i') -FilePath ".\$($AcceptedDomainToTest).csv" -Append
		if (${REsU`LT} -ne ("{1}{2}{0}"-f 'pted','Acc','e'))
		{
			"Failure: $($i) - $($Result) "
		}
	}
	${coU`Nt}++;
}

