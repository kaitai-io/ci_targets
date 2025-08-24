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
pub struct NestedSameName {
    pub _root: SharedType<NestedSameName>,
    pub _parent: SharedType<NestedSameName>,
    pub _self: SharedType<Self>,
    main_data: RefCell<OptRc<NestedSameName_Main>>,
    dummy: RefCell<OptRc<NestedSameName_DummyObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName {
    type Root = NestedSameName;
    type Parent = NestedSameName;

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
        let t = Self::read_into::<_, NestedSameName_Main>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.main_data.borrow_mut() = t;
        let t = Self::read_into::<_, NestedSameName_DummyObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.dummy.borrow_mut() = t;
        Ok(())
    }
}
impl NestedSameName {
}
impl NestedSameName {
    pub fn main_data(&self) -> Ref<'_, OptRc<NestedSameName_Main>> {
        self.main_data.borrow()
    }
}
impl NestedSameName {
    pub fn dummy(&self) -> Ref<'_, OptRc<NestedSameName_DummyObj>> {
        self.dummy.borrow()
    }
}
impl NestedSameName {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedSameName_DummyObj {
    pub _root: SharedType<NestedSameName>,
    pub _parent: SharedType<NestedSameName>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName_DummyObj {
    type Root = NestedSameName;
    type Parent = NestedSameName;

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
impl NestedSameName_DummyObj {
}
impl NestedSameName_DummyObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedSameName_DummyObj_Foo {
    pub _root: SharedType<NestedSameName>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName_DummyObj_Foo {
    type Root = NestedSameName;
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
impl NestedSameName_DummyObj_Foo {
}
impl NestedSameName_DummyObj_Foo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedSameName_Main {
    pub _root: SharedType<NestedSameName>,
    pub _parent: SharedType<NestedSameName>,
    pub _self: SharedType<Self>,
    main_size: RefCell<i32>,
    foo: RefCell<OptRc<NestedSameName_Main_FooObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName_Main {
    type Root = NestedSameName;
    type Parent = NestedSameName;

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
        *self_rc.main_size.borrow_mut() = _io.read_s4le()?.into();
        let t = Self::read_into::<_, NestedSameName_Main_FooObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.foo.borrow_mut() = t;
        Ok(())
    }
}
impl NestedSameName_Main {
}
impl NestedSameName_Main {
    pub fn main_size(&self) -> Ref<'_, i32> {
        self.main_size.borrow()
    }
}
impl NestedSameName_Main {
    pub fn foo(&self) -> Ref<'_, OptRc<NestedSameName_Main_FooObj>> {
        self.foo.borrow()
    }
}
impl NestedSameName_Main {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedSameName_Main_FooObj {
    pub _root: SharedType<NestedSameName>,
    pub _parent: SharedType<NestedSameName_Main>,
    pub _self: SharedType<Self>,
    data: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName_Main_FooObj {
    type Root = NestedSameName;
    type Parent = NestedSameName_Main;

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
        *self_rc.data.borrow_mut() = _io.read_bytes(((*_prc.as_ref().unwrap().main_size() as i32) * (2 as i32)) as usize)?.into();
        Ok(())
    }
}
impl NestedSameName_Main_FooObj {
}
impl NestedSameName_Main_FooObj {
    pub fn data(&self) -> Ref<'_, Vec<u8>> {
        self.data.borrow()
    }
}
impl NestedSameName_Main_FooObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
