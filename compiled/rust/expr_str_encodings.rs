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
pub struct ExprStrEncodings {
    pub _root: SharedType<ExprStrEncodings>,
    pub _parent: SharedType<ExprStrEncodings>,
    pub _self: SharedType<Self>,
    len_of_1: RefCell<u16>,
    str1: RefCell<String>,
    len_of_2: RefCell<u16>,
    str2: RefCell<String>,
    len_of_3: RefCell<u16>,
    str3: RefCell<String>,
    len_of_4: RefCell<u16>,
    str4: RefCell<String>,
    _io: RefCell<BytesReader>,
    f_str1_eq: Cell<bool>,
    str1_eq: RefCell<bool>,
    f_str2_eq: Cell<bool>,
    str2_eq: RefCell<bool>,
    f_str3_eq: Cell<bool>,
    str3_eq: RefCell<bool>,
    f_str3_eq_str2: Cell<bool>,
    str3_eq_str2: RefCell<bool>,
    f_str4_eq: Cell<bool>,
    str4_eq: RefCell<bool>,
    f_str4_gt_str_calc: Cell<bool>,
    str4_gt_str_calc: RefCell<bool>,
    f_str4_gt_str_from_bytes: Cell<bool>,
    str4_gt_str_from_bytes: RefCell<bool>,
}
impl KStruct for ExprStrEncodings {
    type Root = ExprStrEncodings;
    type Parent = ExprStrEncodings;

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
        *self_rc.len_of_1.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str1.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_1() as usize)?.into(), "ASCII")?;
        *self_rc.len_of_2.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str2.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_2() as usize)?.into(), "UTF-8")?;
        *self_rc.len_of_3.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str3.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_3() as usize)?.into(), "Shift_JIS")?;
        *self_rc.len_of_4.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str4.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_of_4() as usize)?.into(), "IBM437")?;
        Ok(())
    }
}
impl ExprStrEncodings {
    pub fn str1_eq(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1_eq.get() {
            return Ok(self.str1_eq.borrow());
        }
        self.f_str1_eq.set(true);
        *self.str1_eq.borrow_mut() = (*self.str1() == "Some ASCII".to_string()) as bool;
        Ok(self.str1_eq.borrow())
    }
    pub fn str2_eq(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str2_eq.get() {
            return Ok(self.str2_eq.borrow());
        }
        self.f_str2_eq.set(true);
        *self.str2_eq.borrow_mut() = (*self.str2() == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}".to_string()) as bool;
        Ok(self.str2_eq.borrow())
    }
    pub fn str3_eq(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str3_eq.get() {
            return Ok(self.str3_eq.borrow());
        }
        self.f_str3_eq.set(true);
        *self.str3_eq.borrow_mut() = (*self.str3() == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}".to_string()) as bool;
        Ok(self.str3_eq.borrow())
    }
    pub fn str3_eq_str2(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str3_eq_str2.get() {
            return Ok(self.str3_eq_str2.borrow());
        }
        self.f_str3_eq_str2.set(true);
        *self.str3_eq_str2.borrow_mut() = (*self.str3() == self.str2().to_string()) as bool;
        Ok(self.str3_eq_str2.borrow())
    }
    pub fn str4_eq(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str4_eq.get() {
            return Ok(self.str4_eq.borrow());
        }
        self.f_str4_eq.set(true);
        *self.str4_eq.borrow_mut() = (*self.str4() == "\u{2591}\u{2592}\u{2593}".to_string()) as bool;
        Ok(self.str4_eq.borrow())
    }
    pub fn str4_gt_str_calc(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str4_gt_str_calc.get() {
            return Ok(self.str4_gt_str_calc.borrow());
        }
        self.f_str4_gt_str_calc.set(true);
        *self.str4_gt_str_calc.borrow_mut() = (*self.str4() > "\u{2524}".to_string()) as bool;
        Ok(self.str4_gt_str_calc.borrow())
    }
    pub fn str4_gt_str_from_bytes(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str4_gt_str_from_bytes.get() {
            return Ok(self.str4_gt_str_from_bytes.borrow());
        }
        self.f_str4_gt_str_from_bytes.set(true);
        *self.str4_gt_str_from_bytes.borrow_mut() = (*self.str4() > bytes_to_str(&vec![0xb4u8], "IBM437")?.to_string()) as bool;
        Ok(self.str4_gt_str_from_bytes.borrow())
    }
}
impl ExprStrEncodings {
    pub fn len_of_1(&self) -> Ref<'_, u16> {
        self.len_of_1.borrow()
    }
}
impl ExprStrEncodings {
    pub fn str1(&self) -> Ref<'_, String> {
        self.str1.borrow()
    }
}
impl ExprStrEncodings {
    pub fn len_of_2(&self) -> Ref<'_, u16> {
        self.len_of_2.borrow()
    }
}
impl ExprStrEncodings {
    pub fn str2(&self) -> Ref<'_, String> {
        self.str2.borrow()
    }
}
impl ExprStrEncodings {
    pub fn len_of_3(&self) -> Ref<'_, u16> {
        self.len_of_3.borrow()
    }
}
impl ExprStrEncodings {
    pub fn str3(&self) -> Ref<'_, String> {
        self.str3.borrow()
    }
}
impl ExprStrEncodings {
    pub fn len_of_4(&self) -> Ref<'_, u16> {
        self.len_of_4.borrow()
    }
}
impl ExprStrEncodings {
    pub fn str4(&self) -> Ref<'_, String> {
        self.str4.borrow()
    }
}
impl ExprStrEncodings {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
