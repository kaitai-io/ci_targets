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
pub struct InstanceUserArray {
    pub _root: SharedType<InstanceUserArray>,
    pub _parent: SharedType<InstanceUserArray>,
    pub _self: SharedType<Self>,
    ofs: RefCell<u32>,
    entry_size: RefCell<u32>,
    qty_entries: RefCell<u32>,
    _io: RefCell<BytesReader>,
    user_entries_raw: RefCell<Vec<Vec<u8>>>,
    f_user_entries: Cell<bool>,
    user_entries: RefCell<Vec<OptRc<InstanceUserArray_Entry>>>,
}
impl KStruct for InstanceUserArray {
    type Root = InstanceUserArray;
    type Parent = InstanceUserArray;

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
        *self_rc.ofs.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.entry_size.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.qty_entries.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl InstanceUserArray {
    pub fn user_entries(
        &self
    ) -> KResult<Ref<'_, Vec<OptRc<InstanceUserArray_Entry>>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_user_entries.get() {
            return Ok(self.user_entries.borrow());
        }
        self.f_user_entries.set(true);
        if ((*self.ofs() as u32) > (0 as u32)) {
            let _pos = _io.pos();
            _io.seek(*self.ofs() as usize)?;
            *self.user_entries_raw.borrow_mut() = Vec::new();
            *self.user_entries.borrow_mut() = Vec::new();
            let l_user_entries = *self.qty_entries();
            for _i in 0..l_user_entries {
                self.user_entries_raw.borrow_mut().push(_io.read_bytes(*self.entry_size() as usize)?.into());
                let user_entries_raw = self.user_entries_raw.borrow();
                let io_user_entries_raw = BytesReader::from(user_entries_raw.last().unwrap().clone());
                let t = Self::read_into::<BytesReader, InstanceUserArray_Entry>(&io_user_entries_raw, Some(self._root.clone()), Some(self._self.clone()))?.into();
                self.user_entries.borrow_mut().push(t);
            }
            _io.seek(_pos)?;
        }
        Ok(self.user_entries.borrow())
    }
}
impl InstanceUserArray {
    pub fn ofs(&self) -> Ref<'_, u32> {
        self.ofs.borrow()
    }
}
impl InstanceUserArray {
    pub fn entry_size(&self) -> Ref<'_, u32> {
        self.entry_size.borrow()
    }
}
impl InstanceUserArray {
    pub fn qty_entries(&self) -> Ref<'_, u32> {
        self.qty_entries.borrow()
    }
}
impl InstanceUserArray {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl InstanceUserArray {
    pub fn user_entries_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.user_entries_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceUserArray_Entry {
    pub _root: SharedType<InstanceUserArray>,
    pub _parent: SharedType<InstanceUserArray>,
    pub _self: SharedType<Self>,
    word1: RefCell<u16>,
    word2: RefCell<u16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for InstanceUserArray_Entry {
    type Root = InstanceUserArray;
    type Parent = InstanceUserArray;

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
        *self_rc.word1.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.word2.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl InstanceUserArray_Entry {
}
impl InstanceUserArray_Entry {
    pub fn word1(&self) -> Ref<'_, u16> {
        self.word1.borrow()
    }
}
impl InstanceUserArray_Entry {
    pub fn word2(&self) -> Ref<'_, u16> {
        self.word2.borrow()
    }
}
impl InstanceUserArray_Entry {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
