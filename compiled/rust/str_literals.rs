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
pub struct StrLiterals {
    pub _root: SharedType<StrLiterals>,
    pub _parent: SharedType<StrLiterals>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_backslashes: Cell<bool>,
    backslashes: RefCell<String>,
    f_complex_str: Cell<bool>,
    complex_str: RefCell<String>,
    f_double_quotes: Cell<bool>,
    double_quotes: RefCell<String>,
    f_octal_eatup: Cell<bool>,
    octal_eatup: RefCell<String>,
    f_octal_eatup2: Cell<bool>,
    octal_eatup2: RefCell<String>,
}
impl KStruct for StrLiterals {
    type Root = StrLiterals;
    type Parent = StrLiterals;

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
impl StrLiterals {
    pub fn backslashes(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_backslashes.get() {
            return Ok(self.backslashes.borrow());
        }
        self.f_backslashes.set(true);
        *self.backslashes.borrow_mut() = "\\\\\\".to_string();
        Ok(self.backslashes.borrow())
    }
    pub fn complex_str(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_complex_str.get() {
            return Ok(self.complex_str.borrow());
        }
        self.f_complex_str.set(true);
        *self.complex_str.borrow_mut() = "\u{0}\u{1}\u{2}\u{7}\u{8}\n\r\t\u{b}\u{c}\u{1b}=\u{7}\n$\u{263b}".to_string();
        Ok(self.complex_str.borrow())
    }
    pub fn double_quotes(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_double_quotes.get() {
            return Ok(self.double_quotes.borrow());
        }
        self.f_double_quotes.set(true);
        *self.double_quotes.borrow_mut() = "\"\"\"".to_string();
        Ok(self.double_quotes.borrow())
    }
    pub fn octal_eatup(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_octal_eatup.get() {
            return Ok(self.octal_eatup.borrow());
        }
        self.f_octal_eatup.set(true);
        *self.octal_eatup.borrow_mut() = "\u{0}22".to_string();
        Ok(self.octal_eatup.borrow())
    }
    pub fn octal_eatup2(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_octal_eatup2.get() {
            return Ok(self.octal_eatup2.borrow());
        }
        self.f_octal_eatup2.set(true);
        *self.octal_eatup2.borrow_mut() = "\u{2}2".to_string();
        Ok(self.octal_eatup2.borrow())
    }
}
impl StrLiterals {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
