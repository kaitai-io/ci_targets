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
pub struct ExprBytesCmp {
    pub _root: SharedType<ExprBytesCmp>,
    pub _parent: SharedType<ExprBytesCmp>,
    pub _self: SharedType<Self>,
    one: RefCell<Vec<u8>>,
    two: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    f_ack: Cell<bool>,
    ack: RefCell<Vec<u8>>,
    f_ack2: Cell<bool>,
    ack2: RefCell<Vec<u8>>,
    f_hi_val: Cell<bool>,
    hi_val: RefCell<Vec<u8>>,
    f_is_eq: Cell<bool>,
    is_eq: RefCell<bool>,
    f_is_ge: Cell<bool>,
    is_ge: RefCell<bool>,
    f_is_gt: Cell<bool>,
    is_gt: RefCell<bool>,
    f_is_gt2: Cell<bool>,
    is_gt2: RefCell<bool>,
    f_is_le: Cell<bool>,
    is_le: RefCell<bool>,
    f_is_lt: Cell<bool>,
    is_lt: RefCell<bool>,
    f_is_lt2: Cell<bool>,
    is_lt2: RefCell<bool>,
    f_is_ne: Cell<bool>,
    is_ne: RefCell<bool>,
}
impl KStruct for ExprBytesCmp {
    type Root = ExprBytesCmp;
    type Parent = ExprBytesCmp;

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
        *self_rc.one.borrow_mut() = _io.read_bytes(1 as usize)?.into();
        *self_rc.two.borrow_mut() = _io.read_bytes(3 as usize)?.into();
        Ok(())
    }
}
impl ExprBytesCmp {
    pub fn ack(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_ack.get() {
            return Ok(self.ack.borrow());
        }
        self.f_ack.set(true);
        *self.ack.borrow_mut() = vec![0x41u8, 0x43u8, 0x4bu8].to_vec();
        Ok(self.ack.borrow())
    }
    pub fn ack2(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_ack2.get() {
            return Ok(self.ack2.borrow());
        }
        self.f_ack2.set(true);
        *self.ack2.borrow_mut() = vec![0x41u8, 0x43u8, 0x4bu8, 0x32u8].to_vec();
        Ok(self.ack2.borrow())
    }
    pub fn hi_val(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_hi_val.get() {
            return Ok(self.hi_val.borrow());
        }
        self.f_hi_val.set(true);
        *self.hi_val.borrow_mut() = vec![0x90u8, 0x43u8].to_vec();
        Ok(self.hi_val.borrow())
    }
    pub fn is_eq(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_eq.get() {
            return Ok(self.is_eq.borrow());
        }
        self.f_is_eq.set(true);
        *self.is_eq.borrow_mut() = (*self.two() == *self.ack()?) as bool;
        Ok(self.is_eq.borrow())
    }
    pub fn is_ge(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_ge.get() {
            return Ok(self.is_ge.borrow());
        }
        self.f_is_ge.set(true);
        *self.is_ge.borrow_mut() = (*self.two() >= *self.ack2()?) as bool;
        Ok(self.is_ge.borrow())
    }
    pub fn is_gt(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_gt.get() {
            return Ok(self.is_gt.borrow());
        }
        self.f_is_gt.set(true);
        *self.is_gt.borrow_mut() = (*self.two() > *self.ack2()?) as bool;
        Ok(self.is_gt.borrow())
    }
    pub fn is_gt2(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_gt2.get() {
            return Ok(self.is_gt2.borrow());
        }
        self.f_is_gt2.set(true);
        *self.is_gt2.borrow_mut() = (*self.hi_val()? > *self.two()) as bool;
        Ok(self.is_gt2.borrow())
    }
    pub fn is_le(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_le.get() {
            return Ok(self.is_le.borrow());
        }
        self.f_is_le.set(true);
        *self.is_le.borrow_mut() = (*self.two() <= *self.ack2()?) as bool;
        Ok(self.is_le.borrow())
    }
    pub fn is_lt(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_lt.get() {
            return Ok(self.is_lt.borrow());
        }
        self.f_is_lt.set(true);
        *self.is_lt.borrow_mut() = (*self.two() < *self.ack2()?) as bool;
        Ok(self.is_lt.borrow())
    }
    pub fn is_lt2(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_lt2.get() {
            return Ok(self.is_lt2.borrow());
        }
        self.f_is_lt2.set(true);
        *self.is_lt2.borrow_mut() = (*self.one() < *self.two()) as bool;
        Ok(self.is_lt2.borrow())
    }
    pub fn is_ne(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_ne.get() {
            return Ok(self.is_ne.borrow());
        }
        self.f_is_ne.set(true);
        *self.is_ne.borrow_mut() = (*self.two() != *self.ack()?) as bool;
        Ok(self.is_ne.borrow())
    }
}
impl ExprBytesCmp {
    pub fn one(&self) -> Ref<Vec<u8>> {
        self.one.borrow()
    }
}
impl ExprBytesCmp {
    pub fn two(&self) -> Ref<Vec<u8>> {
        self.two.borrow()
    }
}
impl ExprBytesCmp {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
