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
pub struct EnumNegative {
    pub _root: SharedType<EnumNegative>,
    pub _parent: SharedType<EnumNegative>,
    pub _self: SharedType<Self>,
    f1: RefCell<EnumNegative_Constants>,
    f2: RefCell<EnumNegative_Constants>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumNegative {
    type Root = EnumNegative;
    type Parent = EnumNegative;

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
        *self_rc.f1.borrow_mut() = (_io.read_s1()? as i64).try_into()?;
        *self_rc.f2.borrow_mut() = (_io.read_s1()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumNegative {
}
impl EnumNegative {
    pub fn f1(&self) -> Ref<EnumNegative_Constants> {
        self.f1.borrow()
    }
}
impl EnumNegative {
    pub fn f2(&self) -> Ref<EnumNegative_Constants> {
        self.f2.borrow()
    }
}
impl EnumNegative {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumNegative_Constants {
    NegativeOne,
    PositiveOne,
    Unknown(i64),
}

impl TryFrom<i64> for EnumNegative_Constants {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumNegative_Constants> {
        match flag {
            -1 => Ok(EnumNegative_Constants::NegativeOne),
            1 => Ok(EnumNegative_Constants::PositiveOne),
            _ => Ok(EnumNegative_Constants::Unknown(flag)),
        }
    }
}

impl From<&EnumNegative_Constants> for i64 {
    fn from(v: &EnumNegative_Constants) -> Self {
        match *v {
            EnumNegative_Constants::NegativeOne => -1,
            EnumNegative_Constants::PositiveOne => 1,
            EnumNegative_Constants::Unknown(v) => v
        }
    }
}

impl Default for EnumNegative_Constants {
    fn default() -> Self { EnumNegative_Constants::Unknown(0) }
}

