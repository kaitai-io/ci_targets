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
pub struct Expr3 {
    pub _root: SharedType<Expr3>,
    pub _parent: SharedType<Expr3>,
    pub _self: SharedType<Self>,
    one: RefCell<u8>,
    two: RefCell<String>,
    _io: RefCell<BytesReader>,
    f_four: Cell<bool>,
    four: RefCell<String>,
    f_is_str_eq: Cell<bool>,
    is_str_eq: RefCell<bool>,
    f_is_str_ge: Cell<bool>,
    is_str_ge: RefCell<bool>,
    f_is_str_gt: Cell<bool>,
    is_str_gt: RefCell<bool>,
    f_is_str_le: Cell<bool>,
    is_str_le: RefCell<bool>,
    f_is_str_lt: Cell<bool>,
    is_str_lt: RefCell<bool>,
    f_is_str_lt2: Cell<bool>,
    is_str_lt2: RefCell<bool>,
    f_is_str_ne: Cell<bool>,
    is_str_ne: RefCell<bool>,
    f_test_not: Cell<bool>,
    test_not: RefCell<bool>,
    f_three: Cell<bool>,
    three: RefCell<String>,
}
impl KStruct for Expr3 {
    type Root = Expr3;
    type Parent = Expr3;

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
        *self_rc.one.borrow_mut() = _io.read_u1()?.into();
        *self_rc.two.borrow_mut() = bytes_to_str(&_io.read_bytes(3 as usize)?.into(), "ASCII")?;
        Ok(())
    }
}
impl Expr3 {
    pub fn four(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_four.get() {
            return Ok(self.four.borrow());
        }
        self.f_four.set(true);
        *self.four.borrow_mut() = format!("{}{}", format!("{}{}", "_", *self.two()), "_").to_string();
        Ok(self.four.borrow())
    }
    pub fn is_str_eq(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_str_eq.get() {
            return Ok(self.is_str_eq.borrow());
        }
        self.f_is_str_eq.set(true);
        *self.is_str_eq.borrow_mut() = (*self.two() == "ACK".to_string()) as bool;
        Ok(self.is_str_eq.borrow())
    }
    pub fn is_str_ge(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_str_ge.get() {
            return Ok(self.is_str_ge.borrow());
        }
        self.f_is_str_ge.set(true);
        *self.is_str_ge.borrow_mut() = (*self.two() >= "ACK2".to_string()) as bool;
        Ok(self.is_str_ge.borrow())
    }
    pub fn is_str_gt(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_str_gt.get() {
            return Ok(self.is_str_gt.borrow());
        }
        self.f_is_str_gt.set(true);
        *self.is_str_gt.borrow_mut() = (*self.two() > "ACK2".to_string()) as bool;
        Ok(self.is_str_gt.borrow())
    }
    pub fn is_str_le(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_str_le.get() {
            return Ok(self.is_str_le.borrow());
        }
        self.f_is_str_le.set(true);
        *self.is_str_le.borrow_mut() = (*self.two() <= "ACK2".to_string()) as bool;
        Ok(self.is_str_le.borrow())
    }
    pub fn is_str_lt(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_str_lt.get() {
            return Ok(self.is_str_lt.borrow());
        }
        self.f_is_str_lt.set(true);
        *self.is_str_lt.borrow_mut() = (*self.two() < "ACK2".to_string()) as bool;
        Ok(self.is_str_lt.borrow())
    }
    pub fn is_str_lt2(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_str_lt2.get() {
            return Ok(self.is_str_lt2.borrow());
        }
        self.f_is_str_lt2.set(true);
        *self.is_str_lt2.borrow_mut() = (*self.three()? < self.two().to_string()) as bool;
        Ok(self.is_str_lt2.borrow())
    }
    pub fn is_str_ne(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_str_ne.get() {
            return Ok(self.is_str_ne.borrow());
        }
        self.f_is_str_ne.set(true);
        *self.is_str_ne.borrow_mut() = (*self.two() != "ACK".to_string()) as bool;
        Ok(self.is_str_ne.borrow())
    }
    pub fn test_not(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_test_not.get() {
            return Ok(self.test_not.borrow());
        }
        self.f_test_not.set(true);
        *self.test_not.borrow_mut() = (!(false)) as bool;
        Ok(self.test_not.borrow())
    }
    pub fn three(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_three.get() {
            return Ok(self.three.borrow());
        }
        self.f_three.set(true);
        *self.three.borrow_mut() = format!("{}{}", "@", *self.two()).to_string();
        Ok(self.three.borrow())
    }
}
impl Expr3 {
    pub fn one(&self) -> Ref<u8> {
        self.one.borrow()
    }
}
impl Expr3 {
    pub fn two(&self) -> Ref<String> {
        self.two.borrow()
    }
}
impl Expr3 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
