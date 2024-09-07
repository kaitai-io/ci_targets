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
pub struct NonStandard {
    pub _root: SharedType<NonStandard>,
    pub _parent: SharedType<NonStandard>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    bar: RefCell<Option<NonStandard_Bar>>,
    _io: RefCell<BytesReader>,
    f_pi: Cell<bool>,
    pi: RefCell<u8>,
    f_vi: Cell<bool>,
    vi: RefCell<u8>,
}
#[derive(Debug, Clone)]
pub enum NonStandard_Bar {
    U2(u16),
    U4(u32),
}
impl From<u16> for NonStandard_Bar {
    fn from(v: u16) -> Self {
        Self::U2(v)
    }
}
impl From<&NonStandard_Bar> for u16 {
    fn from(e: &NonStandard_Bar) -> Self {
        if let NonStandard_Bar::U2(v) = e {
            return *v
        }
        panic!("trying to convert from enum NonStandard_Bar::U2 to u16, enum value {:?}", e)
    }
}
impl From<u32> for NonStandard_Bar {
    fn from(v: u32) -> Self {
        Self::U4(v)
    }
}
impl From<&NonStandard_Bar> for u32 {
    fn from(e: &NonStandard_Bar) -> Self {
        if let NonStandard_Bar::U4(v) = e {
            return *v
        }
        panic!("trying to convert from enum NonStandard_Bar::U4 to u32, enum value {:?}", e)
    }
}
impl From<&NonStandard_Bar> for usize {
    fn from(e: &NonStandard_Bar) -> Self {
        match e {
            NonStandard_Bar::U2(v) => *v as usize,
            NonStandard_Bar::U4(v) => *v as usize,
        }
    }
}

impl KStruct for NonStandard {
    type Root = NonStandard;
    type Parent = NonStandard;

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
        match *self_rc.foo() {
            42 => {
                *self_rc.bar.borrow_mut() = Some(_io.read_u2le()?.into());
            }
            43 => {
                *self_rc.bar.borrow_mut() = Some(_io.read_u4le()?.into());
            }
            _ => {}
        }
        Ok(())
    }
}
impl NonStandard {
    pub fn pi(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pi.get() {
            return Ok(self.pi.borrow());
        }
        self.f_pi.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.pi.borrow_mut() = _io.read_u1()?.into();
        _io.seek(_pos)?;
        Ok(self.pi.borrow())
    }
    pub fn vi(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_vi.get() {
            return Ok(self.vi.borrow());
        }
        self.f_vi.set(true);
        *self.vi.borrow_mut() = (*self.foo()) as u8;
        Ok(self.vi.borrow())
    }
}
impl NonStandard {
    pub fn foo(&self) -> Ref<u8> {
        self.foo.borrow()
    }
}
impl NonStandard {
    pub fn bar(&self) -> usize {
        self.bar.borrow().as_ref().unwrap().into()
    }
    pub fn bar_enum(&self) -> Ref<Option<NonStandard_Bar>> {
        self.bar.borrow()
    }
}
impl NonStandard {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
