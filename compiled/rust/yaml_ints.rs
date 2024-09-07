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
pub struct YamlInts {
    pub _root: SharedType<YamlInts>,
    pub _parent: SharedType<YamlInts>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_test_u4_dec: Cell<bool>,
    test_u4_dec: RefCell<i32>,
    f_test_u4_hex: Cell<bool>,
    test_u4_hex: RefCell<i32>,
    f_test_u8_dec: Cell<bool>,
    test_u8_dec: RefCell<i32>,
    f_test_u8_hex: Cell<bool>,
    test_u8_hex: RefCell<i32>,
}
impl KStruct for YamlInts {
    type Root = YamlInts;
    type Parent = YamlInts;

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
impl YamlInts {
    pub fn test_u4_dec(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_test_u4_dec.get() {
            return Ok(self.test_u4_dec.borrow());
        }
        self.f_test_u4_dec.set(true);
        *self.test_u4_dec.borrow_mut() = (4294967295) as i32;
        Ok(self.test_u4_dec.borrow())
    }
    pub fn test_u4_hex(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_test_u4_hex.get() {
            return Ok(self.test_u4_hex.borrow());
        }
        self.f_test_u4_hex.set(true);
        *self.test_u4_hex.borrow_mut() = (4294967295) as i32;
        Ok(self.test_u4_hex.borrow())
    }
    pub fn test_u8_dec(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_test_u8_dec.get() {
            return Ok(self.test_u8_dec.borrow());
        }
        self.f_test_u8_dec.set(true);
        *self.test_u8_dec.borrow_mut() = (18446744073709551615) as i32;
        Ok(self.test_u8_dec.borrow())
    }
    pub fn test_u8_hex(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_test_u8_hex.get() {
            return Ok(self.test_u8_hex.borrow());
        }
        self.f_test_u8_hex.set(true);
        *self.test_u8_hex.borrow_mut() = (18446744073709551615) as i32;
        Ok(self.test_u8_hex.borrow())
    }
}
impl YamlInts {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
