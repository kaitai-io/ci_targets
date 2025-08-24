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
pub struct EnumFancy {
    pub _root: SharedType<EnumFancy>,
    pub _parent: SharedType<EnumFancy>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<EnumFancy_Animal>,
    pet_2: RefCell<EnumFancy_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumFancy {
    type Root = EnumFancy;
    type Parent = EnumFancy;

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
impl EnumFancy {
}
impl EnumFancy {
    pub fn pet_1(&self) -> Ref<'_, EnumFancy_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumFancy {
    pub fn pet_2(&self) -> Ref<'_, EnumFancy_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumFancy {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumFancy_Animal {

    /**
     * A member of genus Canis.
     */
    Dog,

    /**
     * Small, typically furry, carnivorous mammal.
     */
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for EnumFancy_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumFancy_Animal> {
        match flag {
            4 => Ok(EnumFancy_Animal::Dog),
            7 => Ok(EnumFancy_Animal::Cat),
            12 => Ok(EnumFancy_Animal::Chicken),
            _ => Ok(EnumFancy_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumFancy_Animal> for i64 {
    fn from(v: &EnumFancy_Animal) -> Self {
        match *v {
            EnumFancy_Animal::Dog => 4,
            EnumFancy_Animal::Cat => 7,
            EnumFancy_Animal::Chicken => 12,
            EnumFancy_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumFancy_Animal {
    fn default() -> Self { EnumFancy_Animal::Unknown(0) }
}

