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
pub struct EnumDeep {
    pub _root: SharedType<EnumDeep>,
    pub _parent: SharedType<EnumDeep>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<EnumDeep_Container1_Animal>,
    pet_2: RefCell<EnumDeep_Container1_Container2_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumDeep {
    type Root = EnumDeep;
    type Parent = EnumDeep;

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
        *self_rc.pet_1.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        *self_rc.pet_2.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumDeep {
}
impl EnumDeep {
    pub fn pet_1(&self) -> Ref<EnumDeep_Container1_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumDeep {
    pub fn pet_2(&self) -> Ref<EnumDeep_Container1_Container2_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumDeep {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EnumDeep_Container1 {
    pub _root: SharedType<EnumDeep>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumDeep_Container1 {
    type Root = EnumDeep;
    type Parent = KStructUnit;

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
impl EnumDeep_Container1 {
}
impl EnumDeep_Container1 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumDeep_Container1_Animal {
    Dog,
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for EnumDeep_Container1_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumDeep_Container1_Animal> {
        match flag {
            4 => Ok(EnumDeep_Container1_Animal::Dog),
            7 => Ok(EnumDeep_Container1_Animal::Cat),
            12 => Ok(EnumDeep_Container1_Animal::Chicken),
            _ => Ok(EnumDeep_Container1_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumDeep_Container1_Animal> for i64 {
    fn from(v: &EnumDeep_Container1_Animal) -> Self {
        match *v {
            EnumDeep_Container1_Animal::Dog => 4,
            EnumDeep_Container1_Animal::Cat => 7,
            EnumDeep_Container1_Animal::Chicken => 12,
            EnumDeep_Container1_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumDeep_Container1_Animal {
    fn default() -> Self { EnumDeep_Container1_Animal::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct EnumDeep_Container1_Container2 {
    pub _root: SharedType<EnumDeep>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumDeep_Container1_Container2 {
    type Root = EnumDeep;
    type Parent = KStructUnit;

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
impl EnumDeep_Container1_Container2 {
}
impl EnumDeep_Container1_Container2 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumDeep_Container1_Container2_Animal {
    Canary,
    Turtle,
    Hare,
    Unknown(i64),
}

impl TryFrom<i64> for EnumDeep_Container1_Container2_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumDeep_Container1_Container2_Animal> {
        match flag {
            4 => Ok(EnumDeep_Container1_Container2_Animal::Canary),
            7 => Ok(EnumDeep_Container1_Container2_Animal::Turtle),
            12 => Ok(EnumDeep_Container1_Container2_Animal::Hare),
            _ => Ok(EnumDeep_Container1_Container2_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumDeep_Container1_Container2_Animal> for i64 {
    fn from(v: &EnumDeep_Container1_Container2_Animal) -> Self {
        match *v {
            EnumDeep_Container1_Container2_Animal::Canary => 4,
            EnumDeep_Container1_Container2_Animal::Turtle => 7,
            EnumDeep_Container1_Container2_Animal::Hare => 12,
            EnumDeep_Container1_Container2_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumDeep_Container1_Container2_Animal {
    fn default() -> Self { EnumDeep_Container1_Container2_Animal::Unknown(0) }
}

