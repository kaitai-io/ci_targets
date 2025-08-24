// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct ExprOpsParens {
    pub _root: SharedType<ExprOpsParens>,
    pub _parent: SharedType<ExprOpsParens>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_bool_and: Cell<bool>,
    bool_and: RefCell<i32>,
    f_bool_eq: Cell<bool>,
    bool_eq: RefCell<i32>,
    f_bool_or: Cell<bool>,
    bool_or: RefCell<i32>,
    f_f_2pi: Cell<bool>,
    f_2pi: RefCell<f64>,
    f_f_e: Cell<bool>,
    f_e: RefCell<f64>,
    f_f_sum_to_int: Cell<bool>,
    f_sum_to_int: RefCell<i32>,
    f_i_42: Cell<bool>,
    i_42: RefCell<i8>,
    f_i_m13: Cell<bool>,
    i_m13: RefCell<i32>,
    f_i_sum_to_str: Cell<bool>,
    i_sum_to_str: RefCell<String>,
    f_str_0_to_4: Cell<bool>,
    str_0_to_4: RefCell<String>,
    f_str_5_to_9: Cell<bool>,
    str_5_to_9: RefCell<String>,
    f_str_concat_len: Cell<bool>,
    str_concat_len: RefCell<i32>,
    f_str_concat_rev: Cell<bool>,
    str_concat_rev: RefCell<String>,
    f_str_concat_substr_2_to_7: Cell<bool>,
    str_concat_substr_2_to_7: RefCell<String>,
    f_str_concat_to_i: Cell<bool>,
    str_concat_to_i: RefCell<i32>,
}
impl KStruct for ExprOpsParens {
    type Root = ExprOpsParens;
    type Parent = ExprOpsParens;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl ExprOpsParens {
    pub fn bool_and(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_bool_and.get() {
            return Ok(self.bool_and.borrow());
        }
        self.f_bool_and.set(true);
        *self.bool_and.borrow_mut() = (( ((false) && (true)) ) as i32) as i32;
        Ok(self.bool_and.borrow())
    }
    pub fn bool_eq(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_bool_eq.get() {
            return Ok(self.bool_eq.borrow());
        }
        self.f_bool_eq.set(true);
        *self.bool_eq.borrow_mut() = ((false == true) as i32) as i32;
        Ok(self.bool_eq.borrow())
    }
    pub fn bool_or(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_bool_or.get() {
            return Ok(self.bool_or.borrow());
        }
        self.f_bool_or.set(true);
        *self.bool_or.borrow_mut() = (( ((!(false)) || (false)) ) as i32) as i32;
        Ok(self.bool_or.borrow())
    }
    pub fn f_2pi(
        &self
    ) -> KResult<Ref<'_, f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_f_2pi.get() {
            return Ok(self.f_2pi.borrow());
        }
        self.f_f_2pi.set(true);
        *self.f_2pi.borrow_mut() = (6.28) as f64;
        Ok(self.f_2pi.borrow())
    }
    pub fn f_e(
        &self
    ) -> KResult<Ref<'_, f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_f_e.get() {
            return Ok(self.f_e.borrow());
        }
        self.f_f_e.set(true);
        *self.f_e.borrow_mut() = (2.72) as f64;
        Ok(self.f_e.borrow())
    }
    pub fn f_sum_to_int(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_f_sum_to_int.get() {
            return Ok(self.f_sum_to_int.borrow());
        }
        self.f_f_sum_to_int.set(true);
        *self.f_sum_to_int.borrow_mut() = (((*self.f_2pi()? as f64) + (*self.f_e()? as f64)) as i32) as i32;
        Ok(self.f_sum_to_int.borrow())
    }
    pub fn i_42(
        &self
    ) -> KResult<Ref<'_, i8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_i_42.get() {
            return Ok(self.i_42.borrow());
        }
        self.f_i_42.set(true);
        *self.i_42.borrow_mut() = (42) as i8;
        Ok(self.i_42.borrow())
    }
    pub fn i_m13(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_i_m13.get() {
            return Ok(self.i_m13.borrow());
        }
        self.f_i_m13.set(true);
        *self.i_m13.borrow_mut() = (-13) as i32;
        Ok(self.i_m13.borrow())
    }
    pub fn i_sum_to_str(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_i_sum_to_str.get() {
            return Ok(self.i_sum_to_str.borrow());
        }
        self.f_i_sum_to_str.set(true);
        *self.i_sum_to_str.borrow_mut() = ((*self.i_42()? as i32) + (*self.i_m13()? as i32)).to_string().to_string();
        Ok(self.i_sum_to_str.borrow())
    }
    pub fn str_0_to_4(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_0_to_4.get() {
            return Ok(self.str_0_to_4.borrow());
        }
        self.f_str_0_to_4.set(true);
        *self.str_0_to_4.borrow_mut() = "01234".to_string();
        Ok(self.str_0_to_4.borrow())
    }
    pub fn str_5_to_9(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_5_to_9.get() {
            return Ok(self.str_5_to_9.borrow());
        }
        self.f_str_5_to_9.set(true);
        *self.str_5_to_9.borrow_mut() = "56789".to_string();
        Ok(self.str_5_to_9.borrow())
    }
    pub fn str_concat_len(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_concat_len.get() {
            return Ok(self.str_concat_len.borrow());
        }
        self.f_str_concat_len.set(true);
        *self.str_concat_len.borrow_mut() = (format!("{}{}", *self.str_0_to_4()?, *self.str_5_to_9()?).len()) as i32;
        Ok(self.str_concat_len.borrow())
    }
    pub fn str_concat_rev(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_concat_rev.get() {
            return Ok(self.str_concat_rev.borrow());
        }
        self.f_str_concat_rev.set(true);
        *self.str_concat_rev.borrow_mut() = reverse_string(format!("{}{}", *self.str_0_to_4()?, *self.str_5_to_9()?))?.to_string();
        Ok(self.str_concat_rev.borrow())
    }
    pub fn str_concat_substr_2_to_7(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_concat_substr_2_to_7.get() {
            return Ok(self.str_concat_substr_2_to_7.borrow());
        }
        self.f_str_concat_substr_2_to_7.set(true);
        *self.str_concat_substr_2_to_7.borrow_mut() = format!("{}{}", *self.str_0_to_4()?, *self.str_5_to_9()?)[2..7].to_string();
        Ok(self.str_concat_substr_2_to_7.borrow())
    }
    pub fn str_concat_to_i(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_concat_to_i.get() {
            return Ok(self.str_concat_to_i.borrow());
        }
        self.f_str_concat_to_i.set(true);
        *self.str_concat_to_i.borrow_mut() = (format!("{}{}", *self.str_0_to_4()?, *self.str_5_to_9()?).parse::<i32>().map_err(|_| KError::CastError)?) as i32;
        Ok(self.str_concat_to_i.borrow())
    }
}
impl ExprOpsParens {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
