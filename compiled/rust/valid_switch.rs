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
pub struct ValidSwitch {
    pub _root: SharedType<ValidSwitch>,
    pub _parent: SharedType<ValidSwitch>,
    pub _self: SharedType<Self>,
    a: RefCell<u8>,
    b: RefCell<Option<ValidSwitch_B>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum ValidSwitch_B {
    U2(u16),
}
impl From<u16> for ValidSwitch_B {
    fn from(v: u16) -> Self {
        Self::U2(v)
    }
}
impl From<&ValidSwitch_B> for u16 {
    fn from(e: &ValidSwitch_B) -> Self {
        if let ValidSwitch_B::U2(v) = e {
            return *v
        }
        panic!("trying to convert from enum ValidSwitch_B::U2 to u16, enum value {:?}", e)
    }
}
impl From<&ValidSwitch_B> for usize {
    fn from(e: &ValidSwitch_B) -> Self {
        match e {
            ValidSwitch_B::U2(v) => *v as usize,
        }
    }
}

impl KStruct for ValidSwitch {
    type Root = ValidSwitch;
    type Parent = ValidSwitch;

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
        *self_rc.a.borrow_mut() = _io.read_u1()?.into();
        if !(((*self_rc.a() as u8) == (80 as u8))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/0".to_string() }));
        }
        match *self_rc.a() {
            80 => {
                *self_rc.b.borrow_mut() = Some(_io.read_u2le()?.into());
            }
            _ => {
                *self_rc.b.borrow_mut() = Some(_io.read_u2be()?.into());
            }
        }
        if !(((self_rc.b() as i32) == (17217 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/1".to_string() }));
        }
        Ok(())
    }
}
impl ValidSwitch {
}
impl ValidSwitch {
    pub fn a(&self) -> Ref<u8> {
        self.a.borrow()
    }
}
impl ValidSwitch {
    pub fn b(&self) -> usize {
        self.b.borrow().as_ref().unwrap().into()
    }
    pub fn b_enum(&self) -> Ref<Option<ValidSwitch_B>> {
        self.b.borrow()
    }
}
impl ValidSwitch {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
