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
pub struct EnumInvalid {
    pub _root: SharedType<EnumInvalid>,
    pub _parent: SharedType<EnumInvalid>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<EnumInvalid_Animal>,
    pet_2: RefCell<EnumInvalid_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumInvalid {
    type Root = EnumInvalid;
    type Parent = EnumInvalid;

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
        *self_rc.pet_1.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        *self_rc.pet_2.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumInvalid {
}
impl EnumInvalid {
    pub fn pet_1(&self) -> Ref<'_, EnumInvalid_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumInvalid {
    pub fn pet_2(&self) -> Ref<'_, EnumInvalid_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumInvalid {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumInvalid_Animal {
    Dog,
    Cat,
    Unknown(i64),
}

impl TryFrom<i64> for EnumInvalid_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumInvalid_Animal> {
        match flag {
            102 => Ok(EnumInvalid_Animal::Dog),
            124 => Ok(EnumInvalid_Animal::Cat),
            _ => Ok(EnumInvalid_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumInvalid_Animal> for i64 {
    fn from(v: &EnumInvalid_Animal) -> Self {
        match *v {
            EnumInvalid_Animal::Dog => 102,
            EnumInvalid_Animal::Cat => 124,
            EnumInvalid_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumInvalid_Animal {
    fn default() -> Self { EnumInvalid_Animal::Unknown(0) }
}

