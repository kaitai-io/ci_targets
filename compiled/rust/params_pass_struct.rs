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
pub struct ParamsPassStruct {
    pub _root: SharedType<ParamsPassStruct>,
    pub _parent: SharedType<ParamsPassStruct>,
    pub _self: SharedType<Self>,
    first: RefCell<OptRc<ParamsPassStruct_Block>>,
    one: RefCell<OptRc<ParamsPassStruct_StructType>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassStruct {
    type Root = ParamsPassStruct;
    type Parent = ParamsPassStruct;

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
        let t = Self::read_into::<_, ParamsPassStruct_Block>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.first.borrow_mut() = t;
        let f = |t : &mut ParamsPassStruct_StructType| Ok(t.set_params(&*self_rc.first()));
        let t = Self::read_into_with_init::<_, ParamsPassStruct_StructType>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.one.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassStruct {
}
impl ParamsPassStruct {
    pub fn first(&self) -> Ref<OptRc<ParamsPassStruct_Block>> {
        self.first.borrow()
    }
}
impl ParamsPassStruct {
    pub fn one(&self) -> Ref<OptRc<ParamsPassStruct_StructType>> {
        self.one.borrow()
    }
}
impl ParamsPassStruct {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassStruct_Block {
    pub _root: SharedType<ParamsPassStruct>,
    pub _parent: SharedType<ParamsPassStruct>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassStruct_Block {
    type Root = ParamsPassStruct;
    type Parent = ParamsPassStruct;

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
        *self_rc.foo.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ParamsPassStruct_Block {
}
impl ParamsPassStruct_Block {
    pub fn foo(&self) -> Ref<u8> {
        self.foo.borrow()
    }
}
impl ParamsPassStruct_Block {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassStruct_StructType {
    pub _root: SharedType<ParamsPassStruct>,
    pub _parent: SharedType<ParamsPassStruct>,
    pub _self: SharedType<Self>,
    foo: RefCell<KStructUnit>,
    bar: RefCell<OptRc<ParamsPassStruct_StructType_Baz>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassStruct_StructType {
    type Root = ParamsPassStruct;
    type Parent = ParamsPassStruct;

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
        let f = |t : &mut ParamsPassStruct_StructType_Baz| Ok(t.set_params(*self_rc.foo()));
        let t = Self::read_into_with_init::<_, ParamsPassStruct_StructType_Baz>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.bar.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassStruct_StructType {
    pub fn foo(&self) -> Ref<KStructUnit> {
        self.foo.borrow()
    }
}
impl ParamsPassStruct_StructType {
    pub fn set_params(&mut self, foo: KStructUnit) {
        *self.foo.borrow_mut() = foo;
    }
}
impl ParamsPassStruct_StructType {
}
impl ParamsPassStruct_StructType {
    pub fn bar(&self) -> Ref<OptRc<ParamsPassStruct_StructType_Baz>> {
        self.bar.borrow()
    }
}
impl ParamsPassStruct_StructType {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassStruct_StructType_Baz {
    pub _root: SharedType<ParamsPassStruct>,
    pub _parent: SharedType<ParamsPassStruct_StructType>,
    pub _self: SharedType<Self>,
    foo: RefCell<KStructUnit>,
    qux: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassStruct_StructType_Baz {
    type Root = ParamsPassStruct;
    type Parent = ParamsPassStruct_StructType;

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
        *self_rc.qux.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ParamsPassStruct_StructType_Baz {
    pub fn foo(&self) -> Ref<KStructUnit> {
        self.foo.borrow()
    }
}
impl ParamsPassStruct_StructType_Baz {
    pub fn set_params(&mut self, foo: KStructUnit) {
        *self.foo.borrow_mut() = foo;
    }
}
impl ParamsPassStruct_StructType_Baz {
}
impl ParamsPassStruct_StructType_Baz {
    pub fn qux(&self) -> Ref<u8> {
        self.qux.borrow()
    }
}
impl ParamsPassStruct_StructType_Baz {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
