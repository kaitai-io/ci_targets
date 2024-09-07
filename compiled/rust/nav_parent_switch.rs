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
pub struct NavParentSwitch {
    pub _root: SharedType<NavParentSwitch>,
    pub _parent: SharedType<NavParentSwitch>,
    pub _self: SharedType<Self>,
    category: RefCell<u8>,
    content: RefCell<Option<NavParentSwitch_Content>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum NavParentSwitch_Content {
    NavParentSwitch_Element1(OptRc<NavParentSwitch_Element1>),
}
impl From<&NavParentSwitch_Content> for OptRc<NavParentSwitch_Element1> {
    fn from(v: &NavParentSwitch_Content) -> Self {
        if let NavParentSwitch_Content::NavParentSwitch_Element1(x) = v {
            return x.clone();
        }
        panic!("expected NavParentSwitch_Content::NavParentSwitch_Element1, got {:?}", v)
    }
}
impl From<OptRc<NavParentSwitch_Element1>> for NavParentSwitch_Content {
    fn from(v: OptRc<NavParentSwitch_Element1>) -> Self {
        Self::NavParentSwitch_Element1(v)
    }
}
impl NavParentSwitch_Content {
    pub fn foo(&self) -> Ref<u8> {
        match self {
            NavParentSwitch_Content::NavParentSwitch_Element1(x) => x.foo.borrow(),
        }
    }
}
impl NavParentSwitch_Content {
    pub fn subelement(&self) -> OptRc<NavParentSwitch_Subelement1> {
        match self {
            NavParentSwitch_Content::NavParentSwitch_Element1(x) => x.subelement.borrow().clone(),
        }
    }
}
impl KStruct for NavParentSwitch {
    type Root = NavParentSwitch;
    type Parent = NavParentSwitch;

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
        *self_rc.category.borrow_mut() = _io.read_u1()?.into();
        match *self_rc.category() {
            1 => {
                let t = Self::read_into::<_, NavParentSwitch_Element1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.content.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl NavParentSwitch {
}
impl NavParentSwitch {
    pub fn category(&self) -> Ref<u8> {
        self.category.borrow()
    }
}
impl NavParentSwitch {
    pub fn content(&self) -> Ref<Option<NavParentSwitch_Content>> {
        self.content.borrow()
    }
}
impl NavParentSwitch {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentSwitch_Element1 {
    pub _root: SharedType<NavParentSwitch>,
    pub _parent: SharedType<NavParentSwitch>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    subelement: RefCell<OptRc<NavParentSwitch_Subelement1>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentSwitch_Element1 {
    type Root = NavParentSwitch;
    type Parent = NavParentSwitch;

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
        let t = Self::read_into::<_, NavParentSwitch_Subelement1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.subelement.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentSwitch_Element1 {
}
impl NavParentSwitch_Element1 {
    pub fn foo(&self) -> Ref<u8> {
        self.foo.borrow()
    }
}
impl NavParentSwitch_Element1 {
    pub fn subelement(&self) -> Ref<OptRc<NavParentSwitch_Subelement1>> {
        self.subelement.borrow()
    }
}
impl NavParentSwitch_Element1 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentSwitch_Subelement1 {
    pub _root: SharedType<NavParentSwitch>,
    pub _parent: SharedType<NavParentSwitch_Element1>,
    pub _self: SharedType<Self>,
    bar: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentSwitch_Subelement1 {
    type Root = NavParentSwitch;
    type Parent = NavParentSwitch_Element1;

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
        if ((*_prc.as_ref().unwrap().foo() as u8) == (66 as u8)) {
            *self_rc.bar.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl NavParentSwitch_Subelement1 {
}
impl NavParentSwitch_Subelement1 {
    pub fn bar(&self) -> Ref<u8> {
        self.bar.borrow()
    }
}
impl NavParentSwitch_Subelement1 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
