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
pub struct NestedSameName2 {
    pub _root: SharedType<NestedSameName2>,
    pub _parent: SharedType<NestedSameName2>,
    pub _self: SharedType<Self>,
    version: RefCell<u32>,
    main_data: RefCell<OptRc<NestedSameName2_Main>>,
    dummy: RefCell<OptRc<NestedSameName2_DummyObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName2 {
    type Root = NestedSameName2;
    type Parent = NestedSameName2;

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
        *self_rc.version.borrow_mut() = _io.read_u4le()?.into();
        let t = Self::read_into::<_, NestedSameName2_Main>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.main_data.borrow_mut() = t;
        let t = Self::read_into::<_, NestedSameName2_DummyObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.dummy.borrow_mut() = t;
        Ok(())
    }
}
impl NestedSameName2 {
}
impl NestedSameName2 {
    pub fn version(&self) -> Ref<'_, u32> {
        self.version.borrow()
    }
}
impl NestedSameName2 {
    pub fn main_data(&self) -> Ref<'_, OptRc<NestedSameName2_Main>> {
        self.main_data.borrow()
    }
}
impl NestedSameName2 {
    pub fn dummy(&self) -> Ref<'_, OptRc<NestedSameName2_DummyObj>> {
        self.dummy.borrow()
    }
}
impl NestedSameName2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedSameName2_DummyObj {
    pub _root: SharedType<NestedSameName2>,
    pub _parent: SharedType<NestedSameName2>,
    pub _self: SharedType<Self>,
    dummy_size: RefCell<i32>,
    foo: RefCell<OptRc<NestedSameName2_DummyObj_FooObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName2_DummyObj {
    type Root = NestedSameName2;
    type Parent = NestedSameName2;

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
        *self_rc.dummy_size.borrow_mut() = _io.read_s4le()?.into();
        let t = Self::read_into::<_, NestedSameName2_DummyObj_FooObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.foo.borrow_mut() = t;
        Ok(())
    }
}
impl NestedSameName2_DummyObj {
}
impl NestedSameName2_DummyObj {
    pub fn dummy_size(&self) -> Ref<'_, i32> {
        self.dummy_size.borrow()
    }
}
impl NestedSameName2_DummyObj {
    pub fn foo(&self) -> Ref<'_, OptRc<NestedSameName2_DummyObj_FooObj>> {
        self.foo.borrow()
    }
}
impl NestedSameName2_DummyObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedSameName2_DummyObj_FooObj {
    pub _root: SharedType<NestedSameName2>,
    pub _parent: SharedType<NestedSameName2_DummyObj>,
    pub _self: SharedType<Self>,
    data2: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName2_DummyObj_FooObj {
    type Root = NestedSameName2;
    type Parent = NestedSameName2_DummyObj;

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
        *self_rc.data2.borrow_mut() = _io.read_bytes(((*_prc.as_ref().unwrap().dummy_size() as i32) * (2 as i32)) as usize)?.into();
        Ok(())
    }
}
impl NestedSameName2_DummyObj_FooObj {
}
impl NestedSameName2_DummyObj_FooObj {
    pub fn data2(&self) -> Ref<'_, Vec<u8>> {
        self.data2.borrow()
    }
}
impl NestedSameName2_DummyObj_FooObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedSameName2_Main {
    pub _root: SharedType<NestedSameName2>,
    pub _parent: SharedType<NestedSameName2>,
    pub _self: SharedType<Self>,
    main_size: RefCell<i32>,
    foo: RefCell<OptRc<NestedSameName2_Main_FooObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName2_Main {
    type Root = NestedSameName2;
    type Parent = NestedSameName2;

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
        let t = Self::read_into::<_, NestedSameName2_Main_FooObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.foo.borrow_mut() = t;
        Ok(())
    }
}
impl NestedSameName2_Main {
}
impl NestedSameName2_Main {
    pub fn main_size(&self) -> Ref<'_, i32> {
        self.main_size.borrow()
    }
}
impl NestedSameName2_Main {
    pub fn foo(&self) -> Ref<'_, OptRc<NestedSameName2_Main_FooObj>> {
        self.foo.borrow()
    }
}
impl NestedSameName2_Main {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedSameName2_Main_FooObj {
    pub _root: SharedType<NestedSameName2>,
    pub _parent: SharedType<NestedSameName2_Main>,
    pub _self: SharedType<Self>,
    data1: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedSameName2_Main_FooObj {
    type Root = NestedSameName2;
    type Parent = NestedSameName2_Main;

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
        *self_rc.data1.borrow_mut() = _io.read_bytes(((*_prc.as_ref().unwrap().main_size() as i32) * (2 as i32)) as usize)?.into();
        Ok(())
    }
}
impl NestedSameName2_Main_FooObj {
}
impl NestedSameName2_Main_FooObj {
    pub fn data1(&self) -> Ref<'_, Vec<u8>> {
        self.data1.borrow()
    }
}
impl NestedSameName2_Main_FooObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
