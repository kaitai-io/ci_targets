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
pub struct RecursiveOne {
    pub _root: SharedType<RecursiveOne>,
    pub _parent: SharedType<RecursiveOne>,
    pub _self: SharedType<Self>,
    one: RefCell<u8>,
    next: RefCell<Option<RecursiveOne_Next>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum RecursiveOne_Next {
    RecursiveOne(OptRc<RecursiveOne>),
    RecursiveOne_Fini(OptRc<RecursiveOne_Fini>),
}
impl From<&RecursiveOne_Next> for OptRc<RecursiveOne> {
    fn from(v: &RecursiveOne_Next) -> Self {
        if let RecursiveOne_Next::RecursiveOne(x) = v {
            return x.clone();
        }
        panic!("expected RecursiveOne_Next::RecursiveOne, got {:?}", v)
    }
}
impl From<OptRc<RecursiveOne>> for RecursiveOne_Next {
    fn from(v: OptRc<RecursiveOne>) -> Self {
        Self::RecursiveOne(v)
    }
}
impl From<&RecursiveOne_Next> for OptRc<RecursiveOne_Fini> {
    fn from(v: &RecursiveOne_Next) -> Self {
        if let RecursiveOne_Next::RecursiveOne_Fini(x) = v {
            return x.clone();
        }
        panic!("expected RecursiveOne_Next::RecursiveOne_Fini, got {:?}", v)
    }
}
impl From<OptRc<RecursiveOne_Fini>> for RecursiveOne_Next {
    fn from(v: OptRc<RecursiveOne_Fini>) -> Self {
        Self::RecursiveOne_Fini(v)
    }
}
impl KStruct for RecursiveOne {
    type Root = RecursiveOne;
    type Parent = RecursiveOne;

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
        match ((*self_rc.one() as u8) & (3 as u8)) {
            0 => {
                let t = Self::read_into::<_, RecursiveOne>(&*_io, Some(self_rc._root.clone()), None)?.into();
                *self_rc.next.borrow_mut() = Some(t);
            }
            1 => {
                let t = Self::read_into::<_, RecursiveOne>(&*_io, Some(self_rc._root.clone()), None)?.into();
                *self_rc.next.borrow_mut() = Some(t);
            }
            2 => {
                let t = Self::read_into::<_, RecursiveOne>(&*_io, Some(self_rc._root.clone()), None)?.into();
                *self_rc.next.borrow_mut() = Some(t);
            }
            3 => {
                let t = Self::read_into::<_, RecursiveOne_Fini>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.next.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl RecursiveOne {
}
impl RecursiveOne {
    pub fn one(&self) -> Ref<'_, u8> {
        self.one.borrow()
    }
}
impl RecursiveOne {
    pub fn next(&self) -> Ref<'_, Option<RecursiveOne_Next>> {
        self.next.borrow()
    }
}
impl RecursiveOne {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct RecursiveOne_Fini {
    pub _root: SharedType<RecursiveOne>,
    pub _parent: SharedType<RecursiveOne>,
    pub _self: SharedType<Self>,
    finisher: RefCell<u16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RecursiveOne_Fini {
    type Root = RecursiveOne;
    type Parent = RecursiveOne;

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
        *self_rc.finisher.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl RecursiveOne_Fini {
}
impl RecursiveOne_Fini {
    pub fn finisher(&self) -> Ref<'_, u16> {
        self.finisher.borrow()
    }
}
impl RecursiveOne_Fini {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
