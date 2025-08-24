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
pub struct ParamsPassArrayStruct {
    pub _root: SharedType<ParamsPassArrayStruct>,
    pub _parent: SharedType<ParamsPassArrayStruct>,
    pub _self: SharedType<Self>,
    one: RefCell<OptRc<ParamsPassArrayStruct_Foo>>,
    two: RefCell<OptRc<ParamsPassArrayStruct_Bar>>,
    pass_structs: RefCell<OptRc<ParamsPassArrayStruct_StructType>>,
    _io: RefCell<BytesReader>,
    f_one_two: Cell<bool>,
    one_two: RefCell<Vec<KStructUnit>>,
}
impl KStruct for ParamsPassArrayStruct {
    type Root = ParamsPassArrayStruct;
    type Parent = ParamsPassArrayStruct;

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
        let t = Self::read_into::<_, ParamsPassArrayStruct_Foo>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.one.borrow_mut() = t;
        let t = Self::read_into::<_, ParamsPassArrayStruct_Bar>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.two.borrow_mut() = t;
        let f = |t : &mut ParamsPassArrayStruct_StructType| Ok(t.set_params(&*self_rc.one_two()?));
        let t = Self::read_into_with_init::<_, ParamsPassArrayStruct_StructType>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.pass_structs.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassArrayStruct {
    pub fn one_two(
        &self
    ) -> KResult<Ref<'_, Vec<KStructUnit>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_two.get() {
            return Ok(self.one_two.borrow());
        }
        self.f_one_two.set(true);
        *self.one_two.borrow_mut() = vec![*self.one(), *self.two()].to_vec();
        Ok(self.one_two.borrow())
    }
}
impl ParamsPassArrayStruct {
    pub fn one(&self) -> Ref<'_, OptRc<ParamsPassArrayStruct_Foo>> {
        self.one.borrow()
    }
}
impl ParamsPassArrayStruct {
    pub fn two(&self) -> Ref<'_, OptRc<ParamsPassArrayStruct_Bar>> {
        self.two.borrow()
    }
}
impl ParamsPassArrayStruct {
    pub fn pass_structs(&self) -> Ref<'_, OptRc<ParamsPassArrayStruct_StructType>> {
        self.pass_structs.borrow()
    }
}
impl ParamsPassArrayStruct {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayStruct_Bar {
    pub _root: SharedType<ParamsPassArrayStruct>,
    pub _parent: SharedType<ParamsPassArrayStruct>,
    pub _self: SharedType<Self>,
    b: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayStruct_Bar {
    type Root = ParamsPassArrayStruct;
    type Parent = ParamsPassArrayStruct;

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
        *self_rc.b.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ParamsPassArrayStruct_Bar {
}
impl ParamsPassArrayStruct_Bar {
    pub fn b(&self) -> Ref<'_, u8> {
        self.b.borrow()
    }
}
impl ParamsPassArrayStruct_Bar {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayStruct_Foo {
    pub _root: SharedType<ParamsPassArrayStruct>,
    pub _parent: SharedType<ParamsPassArrayStruct>,
    pub _self: SharedType<Self>,
    f: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayStruct_Foo {
    type Root = ParamsPassArrayStruct;
    type Parent = ParamsPassArrayStruct;

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
        *self_rc.f.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ParamsPassArrayStruct_Foo {
}
impl ParamsPassArrayStruct_Foo {
    pub fn f(&self) -> Ref<'_, u8> {
        self.f.borrow()
    }
}
impl ParamsPassArrayStruct_Foo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayStruct_StructType {
    pub _root: SharedType<ParamsPassArrayStruct>,
    pub _parent: SharedType<ParamsPassArrayStruct>,
    pub _self: SharedType<Self>,
    structs: RefCell<Vec<KStructUnit>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayStruct_StructType {
    type Root = ParamsPassArrayStruct;
    type Parent = ParamsPassArrayStruct;

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
impl ParamsPassArrayStruct_StructType {
    pub fn structs(&self) -> Ref<'_, Vec<KStructUnit>> {
        self.structs.borrow()
    }
}
impl ParamsPassArrayStruct_StructType {
    pub fn set_params(&mut self, structs: &Vec<KStructUnit>) {
        *self.structs.borrow_mut() = structs.clone();
    }
}
impl ParamsPassArrayStruct_StructType {
}
impl ParamsPassArrayStruct_StructType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
