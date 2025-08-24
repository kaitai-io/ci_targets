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
pub struct ExprEnum {
    pub _root: SharedType<ExprEnum>,
    pub _parent: SharedType<ExprEnum>,
    pub _self: SharedType<Self>,
    one: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_const_dog: Cell<bool>,
    const_dog: RefCell<ExprEnum_Animal>,
    f_derived_boom: Cell<bool>,
    derived_boom: RefCell<ExprEnum_Animal>,
    f_derived_dog: Cell<bool>,
    derived_dog: RefCell<ExprEnum_Animal>,
}
impl KStruct for ExprEnum {
    type Root = ExprEnum;
    type Parent = ExprEnum;

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
        Ok(())
    }
}
impl ExprEnum {
    pub fn const_dog(
        &self
    ) -> KResult<Ref<'_, ExprEnum_Animal>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_const_dog.get() {
            return Ok(self.const_dog.borrow());
        }
        self.f_const_dog.set(true);
        *self.const_dog.borrow_mut() = (4 as i64).try_into()?;
        Ok(self.const_dog.borrow())
    }
    pub fn derived_boom(
        &self
    ) -> KResult<Ref<'_, ExprEnum_Animal>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_derived_boom.get() {
            return Ok(self.derived_boom.borrow());
        }
        self.f_derived_boom.set(true);
        *self.derived_boom.borrow_mut() = (*self.one() as i64).try_into()?;
        Ok(self.derived_boom.borrow())
    }
    pub fn derived_dog(
        &self
    ) -> KResult<Ref<'_, ExprEnum_Animal>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_derived_dog.get() {
            return Ok(self.derived_dog.borrow());
        }
        self.f_derived_dog.set(true);
        *self.derived_dog.borrow_mut() = (((*self.one() as u8) - (98 as u8)) as i64).try_into()?;
        Ok(self.derived_dog.borrow())
    }
}
impl ExprEnum {
    pub fn one(&self) -> Ref<'_, u8> {
        self.one.borrow()
    }
}
impl ExprEnum {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum ExprEnum_Animal {
    Dog,
    Cat,
    Chicken,
    Boom,
    Unknown(i64),
}

impl TryFrom<i64> for ExprEnum_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<ExprEnum_Animal> {
        match flag {
            4 => Ok(ExprEnum_Animal::Dog),
            7 => Ok(ExprEnum_Animal::Cat),
            12 => Ok(ExprEnum_Animal::Chicken),
            102 => Ok(ExprEnum_Animal::Boom),
            _ => Ok(ExprEnum_Animal::Unknown(flag)),
        }
    }
}

impl From<&ExprEnum_Animal> for i64 {
    fn from(v: &ExprEnum_Animal) -> Self {
        match *v {
            ExprEnum_Animal::Dog => 4,
            ExprEnum_Animal::Cat => 7,
            ExprEnum_Animal::Chicken => 12,
            ExprEnum_Animal::Boom => 102,
            ExprEnum_Animal::Unknown(v) => v
        }
    }
}

impl Default for ExprEnum_Animal {
    fn default() -> Self { ExprEnum_Animal::Unknown(0) }
}

