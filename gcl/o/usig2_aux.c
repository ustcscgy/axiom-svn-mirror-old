XSI(string_register->st.st_fillp);
XSI(string_register->st.st_fillp);
XSI(string_register->st.st_dim);
XS(string_register->st.st_self);
XSI(token->st.st_fillp);
XSI(in_signal_handler);
XSI(nlj_active);
XS(nlj_fr);
XS(nlj_tag);
XS(CMPtemp);
XS(CMPtemp1);
XS(CMPtemp2);
XS(CMPtemp3);
XSI(FIXtemp);
XSI(PRINTarray);
XSI(PRINTbase);
XS(PRINTcase);
XSI(PRINTcircle);
XSI(PRINTescape);
XSI(PRINTgensym);
XSI(PRINTlength);
XSI(PRINTlevel);
XSI(PRINTpackage);
XSI(PRINTpretty);
XSI(PRINTradix);
XS(PRINTstream);
XSI(PRINTstructure);
XS(PRINTvs_limit);
XS(PRINTvs_top);
XSI(READbase);
XSI(READdefault_float_format);
XSI(READsuppress);
XS(READtable);
XSI(ctl_end);
XSI(ctl_index);
XSI(ctl_origin);
XS(endp_temp);
XSI(eval1);
XSI(line_length);
XSI(in_list_flag);
XS(kf);
XS(tf);
XSI(left_trim);
XSI(right_trim);
XS(lex_env);
XS(key_function);
XS(test_function);
XS(item_compared);
XSI(intern_flag);
XS(printStructBufp);
XS(sfaslp);
XSI(preserving_whitespace_flag);
XS(sharing_table);
XSI(string_sign);
XSI(string_boundary);
XS(car_or_cdr);
XS(casefun);
XS(tmp_alloc);
#ifndef GMP 
#ifdef CMAC
XS(s4_neg_int[3]);
XS(small_neg_int[2]);
XS(small_pos_int[2]);
#endif
XS(overflow);
XS(top);
XS(hiremainder);
XS(in_saved_avma);
XS(avma	);
#endif

/*  put in NO_INTERRUPT
YS(fmt_base);
YS(fmt_end);
YS(fmt_indents);
YS(fmt_index);
YS(fmt_jmp_buf);
YS(fmt_line_length);
YS(fmt_nparam);
YS(fmt_paramp);
YS(fmt_spare_spaces);
YS(fmt_stream);
YS(fmt_string);
YS(fmt_temporary_stream);
YS(fmt_temporary_string);
 */