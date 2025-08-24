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
pub struct IntegersDoubleOverflow {
    pub _root: SharedType<IntegersDoubleOverflow>,
    pub _parent: SharedType<IntegersDoubleOverflow>,
    pub _self: SharedType<Self>,
    signed_safe_min_be: RefCell<i64>,
    signed_safe_min_le: RefCell<i64>,
    signed_safe_max_be: RefCell<i64>,
    signed_safe_max_le: RefCell<i64>,
    signed_unsafe_neg_be: RefCell<i64>,
    signed_unsafe_neg_le: RefCell<i64>,
    signed_unsafe_pos_be: RefCell<i64>,
    signed_unsafe_pos_le: RefCell<i64>,
    _io: RefCell<BytesReader>,
    f_unsigned_safe_max_be: Cell<bool>,
    unsigned_safe_max_be: RefCell<u64>,
    f_unsigned_safe_max_le: Cell<bool>,
    unsigned_safe_max_le: RefCell<u64>,
    f_unsigned_unsafe_pos_be: Cell<bool>,
    unsigned_unsafe_pos_be: RefCell<u64>,
    f_unsigned_unsafe_pos_le: Cell<bool>,
    unsigned_unsafe_pos_le: RefCell<u64>,
}
impl KStruct for IntegersDoubleOverflow {
    type Root = IntegersDoubleOverflow;
    type Parent = IntegersDoubleOverflow;

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
        *self_rc.signed_safe_min_be.borrow_mut() = _io.read_s8be()?.into();
        *self_rc.signed_safe_min_le.borrow_mut() = _io.read_s8le()?.into();
        *self_rc.signed_safe_max_be.borrow_mut() = _io.read_s8be()?.into();
        *self_rc.signed_safe_max_le.borrow_mut() = _io.read_s8le()?.into();
        *self_rc.signed_unsafe_neg_be.borrow_mut() = _io.read_s8be()?.into();
        *self_rc.signed_unsafe_neg_le.borrow_mut() = _io.read_s8le()?.into();
        *self_rc.signed_unsafe_pos_be.borrow_mut() = _io.read_s8be()?.into();
        *self_rc.signed_unsafe_pos_le.borrow_mut() = _io.read_s8le()?.into();
        Ok(())
    }
}
impl IntegersDoubleOverflow {
    pub fn unsigned_safe_max_be(
        &self
    ) -> KResult<Ref<'_, u64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_unsigned_safe_max_be.get() {
            return Ok(self.unsigned_safe_max_be.borrow());
        }
        self.f_unsigned_safe_max_be.set(true);
        let _pos = _io.pos();
        _io.seek(16 as usize)?;
        *self.unsigned_safe_max_be.borrow_mut() = _io.read_u8be()?.into();
        _io.seek(_pos)?;
        Ok(self.unsigned_safe_max_be.borrow())
    }
    pub fn unsigned_safe_max_le(
        &self
    ) -> KResult<Ref<'_, u64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_unsigned_safe_max_le.get() {
            return Ok(self.unsigned_safe_max_le.borrow());
        }
        self.f_unsigned_safe_max_le.set(true);
        let _pos = _io.pos();
        _io.seek(24 as usize)?;
        *self.unsigned_safe_max_le.borrow_mut() = _io.read_u8le()?.into();
        _io.seek(_pos)?;
        Ok(self.unsigned_safe_max_le.borrow())
    }
    pub fn unsigned_unsafe_pos_be(
        &self
    ) -> KResult<Ref<'_, u64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_unsigned_unsafe_pos_be.get() {
            return Ok(self.unsigned_unsafe_pos_be.borrow());
        }
        self.f_unsigned_unsafe_pos_be.set(true);
        let _pos = _io.pos();
        _io.seek(48 as usize)?;
        *self.unsigned_unsafe_pos_be.borrow_mut() = _io.read_u8be()?.into();
        _io.seek(_pos)?;
        Ok(self.unsigned_unsafe_pos_be.borrow())
    }
    pub fn unsigned_unsafe_pos_le(
        &self
    ) -> KResult<Ref<'_, u64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_unsigned_unsafe_pos_le.get() {
            return Ok(self.unsigned_unsafe_pos_le.borrow());
        }
        self.f_unsigned_unsafe_pos_le.set(true);
        let _pos = _io.pos();
        _io.seek(56 as usize)?;
        *self.unsigned_unsafe_pos_le.borrow_mut() = _io.read_u8le()?.into();
        _io.seek(_pos)?;
        Ok(self.unsigned_unsafe_pos_le.borrow())
    }
}
impl IntegersDoubleOverflow {
    pub fn signed_safe_min_be(&self) -> Ref<'_, i64> {
        self.signed_safe_min_be.borrow()
    }
}
impl IntegersDoubleOverflow {
    pub fn signed_safe_min_le(&self) -> Ref<'_, i64> {
        self.signed_safe_min_le.borrow()
    }
}
impl IntegersDoubleOverflow {
    pub fn signed_safe_max_be(&self) -> Ref<'_, i64> {
        self.signed_safe_max_be.borrow()
    }
}
impl IntegersDoubleOverflow {
    pub fn signed_safe_max_le(&self) -> Ref<'_, i64> {
        self.signed_safe_max_le.borrow()
    }
}
impl IntegersDoubleOverflow {
    pub fn signed_unsafe_neg_be(&self) -> Ref<'_, i64> {
        self.signed_unsafe_neg_be.borrow()
    }
}
impl IntegersDoubleOverflow {
    pub fn signed_unsafe_neg_le(&self) -> Ref<'_, i64> {
        self.signed_unsafe_neg_le.borrow()
    }
}
impl IntegersDoubleOverflow {
    pub fn signed_unsafe_pos_be(&self) -> Ref<'_, i64> {
        self.signed_unsafe_pos_be.borrow()
    }
}
impl IntegersDoubleOverflow {
    pub fn signed_unsafe_pos_le(&self) -> Ref<'_, i64> {
        self.signed_unsafe_pos_le.borrow()
    }
}
impl IntegersDoubleOverflow {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
