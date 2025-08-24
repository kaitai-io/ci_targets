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
pub struct RepeatUntilComplex {
    pub _root: SharedType<RepeatUntilComplex>,
    pub _parent: SharedType<RepeatUntilComplex>,
    pub _self: SharedType<Self>,
    first: RefCell<Vec<OptRc<RepeatUntilComplex_TypeU1>>>,
    second: RefCell<Vec<OptRc<RepeatUntilComplex_TypeU2>>>,
    third: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatUntilComplex {
    type Root = RepeatUntilComplex;
    type Parent = RepeatUntilComplex;

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
        *self_rc.first.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while {
                let t = Self::read_into::<_, RepeatUntilComplex_TypeU1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.first.borrow_mut().push(t);
                let _t_first = self_rc.first.borrow();
                let _tmpa = _t_first.last().unwrap();
                _i += 1;
                let x = !(((*_tmpa.count() as u8) == (0 as u8)));
                x
            } {}
        }
        *self_rc.second.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while {
                let t = Self::read_into::<_, RepeatUntilComplex_TypeU2>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.second.borrow_mut().push(t);
                let _t_second = self_rc.second.borrow();
                let _tmpa = _t_second.last().unwrap();
                _i += 1;
                let x = !(((*_tmpa.count() as u16) == (0 as u16)));
                x
            } {}
        }
        *self_rc.third.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while {
                self_rc.third.borrow_mut().push(_io.read_u1()?.into());
                let _t_third = self_rc.third.borrow();
                let _tmpa = *_t_third.last().unwrap();
                _i += 1;
                let x = !(((_tmpa as u8) == (0 as u8)));
                x
            } {}
        }
        Ok(())
    }
}
impl RepeatUntilComplex {
}
impl RepeatUntilComplex {
    pub fn first(&self) -> Ref<'_, Vec<OptRc<RepeatUntilComplex_TypeU1>>> {
        self.first.borrow()
    }
}
impl RepeatUntilComplex {
    pub fn second(&self) -> Ref<'_, Vec<OptRc<RepeatUntilComplex_TypeU2>>> {
        self.second.borrow()
    }
}
impl RepeatUntilComplex {
    pub fn third(&self) -> Ref<'_, Vec<u8>> {
        self.third.borrow()
    }
}
impl RepeatUntilComplex {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct RepeatUntilComplex_TypeU1 {
    pub _root: SharedType<RepeatUntilComplex>,
    pub _parent: SharedType<RepeatUntilComplex>,
    pub _self: SharedType<Self>,
    count: RefCell<u8>,
    values: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatUntilComplex_TypeU1 {
    type Root = RepeatUntilComplex;
    type Parent = RepeatUntilComplex;

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
        *self_rc.count.borrow_mut() = _io.read_u1()?.into();
        *self_rc.values.borrow_mut() = Vec::new();
        let l_values = *self_rc.count();
        for _i in 0..l_values {
            self_rc.values.borrow_mut().push(_io.read_u1()?.into());
        }
        Ok(())
    }
}
impl RepeatUntilComplex_TypeU1 {
}
impl RepeatUntilComplex_TypeU1 {
    pub fn count(&self) -> Ref<'_, u8> {
        self.count.borrow()
    }
}
impl RepeatUntilComplex_TypeU1 {
    pub fn values(&self) -> Ref<'_, Vec<u8>> {
        self.values.borrow()
    }
}
impl RepeatUntilComplex_TypeU1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct RepeatUntilComplex_TypeU2 {
    pub _root: SharedType<RepeatUntilComplex>,
    pub _parent: SharedType<RepeatUntilComplex>,
    pub _self: SharedType<Self>,
    count: RefCell<u16>,
    values: RefCell<Vec<u16>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatUntilComplex_TypeU2 {
    type Root = RepeatUntilComplex;
    type Parent = RepeatUntilComplex;

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
        *self_rc.count.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.values.borrow_mut() = Vec::new();
        let l_values = *self_rc.count();
        for _i in 0..l_values {
            self_rc.values.borrow_mut().push(_io.read_u2le()?.into());
        }
        Ok(())
    }
}
impl RepeatUntilComplex_TypeU2 {
}
impl RepeatUntilComplex_TypeU2 {
    pub fn count(&self) -> Ref<'_, u16> {
        self.count.borrow()
    }
}
impl RepeatUntilComplex_TypeU2 {
    pub fn values(&self) -> Ref<'_, Vec<u16>> {
        self.values.borrow()
    }
}
impl RepeatUntilComplex_TypeU2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
