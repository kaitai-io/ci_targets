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
pub struct Enum0 {
    pub _root: SharedType<Enum0>,
    pub _parent: SharedType<Enum0>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<Enum0_Animal>,
    pet_2: RefCell<Enum0_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for Enum0 {
    type Root = Enum0;
    type Parent = Enum0;

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
impl Enum0 {
}
impl Enum0 {
    pub fn pet_1(&self) -> Ref<Enum0_Animal> {
        self.pet_1.borrow()
    }
}
impl Enum0 {
    pub fn pet_2(&self) -> Ref<Enum0_Animal> {
        self.pet_2.borrow()
    }
}
impl Enum0 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum Enum0_Animal {
    Dog,
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for Enum0_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<Enum0_Animal> {
        match flag {
            4 => Ok(Enum0_Animal::Dog),
            7 => Ok(Enum0_Animal::Cat),
            12 => Ok(Enum0_Animal::Chicken),
            _ => Ok(Enum0_Animal::Unknown(flag)),
        }
    }
}

impl From<&Enum0_Animal> for i64 {
    fn from(v: &Enum0_Animal) -> Self {
        match *v {
            Enum0_Animal::Dog => 4,
            Enum0_Animal::Cat => 7,
            Enum0_Animal::Chicken => 12,
            Enum0_Animal::Unknown(v) => v
        }
    }
}

impl Default for Enum0_Animal {
    fn default() -> Self { Enum0_Animal::Unknown(0) }
}

