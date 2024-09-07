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
pub struct RepeatNStrzDouble {
    pub _root: SharedType<RepeatNStrzDouble>,
    pub _parent: SharedType<RepeatNStrzDouble>,
    pub _self: SharedType<Self>,
    qty: RefCell<u32>,
    lines1: RefCell<Vec<String>>,
    lines2: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatNStrzDouble {
    type Root = RepeatNStrzDouble;
    type Parent = RepeatNStrzDouble;

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
        *self_rc.qty.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.lines1.borrow_mut() = Vec::new();
        let l_lines1 = ((*self_rc.qty() as u32) / (2 as u32));
        for _i in 0..l_lines1 {
            self_rc.lines1.borrow_mut().push(bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?);
        }
        *self_rc.lines2.borrow_mut() = Vec::new();
        let l_lines2 = ((*self_rc.qty() as u32) / (2 as u32));
        for _i in 0..l_lines2 {
            self_rc.lines2.borrow_mut().push(bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?);
        }
        Ok(())
    }
}
impl RepeatNStrzDouble {
}
impl RepeatNStrzDouble {
    pub fn qty(&self) -> Ref<u32> {
        self.qty.borrow()
    }
}
impl RepeatNStrzDouble {
    pub fn lines1(&self) -> Ref<Vec<String>> {
        self.lines1.borrow()
    }
}
impl RepeatNStrzDouble {
    pub fn lines2(&self) -> Ref<Vec<String>> {
        self.lines2.borrow()
    }
}
impl RepeatNStrzDouble {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
