// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NavParentSwitch extends KaitaiStruct.ReadWrite {
    public static NavParentSwitch fromFile(String fileName) throws IOException {
        return new NavParentSwitch(new ByteBufferKaitaiStream(fileName));
    }
    public NavParentSwitch() {
        this(null, null, null);
    }

    public NavParentSwitch(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentSwitch(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParentSwitch(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentSwitch _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.category = this._io.readU1();
        switch (category()) {
        case 1: {
            this.content = new Element1(this._io, this, _root);
            this.content._read();
            break;
        }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        switch (category()) {
        case 1: {
            this.content._fetchInstances();
            break;
        }
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.category);
        switch (category()) {
        case 1: {
            this.content._write_Seq(this._io);
            break;
        }
        }
    }

    public void _check() {
        switch (category()) {
        case 1: {
            if (!Objects.equals(this.content._root(), _root()))
                throw new ConsistencyError("content", _root(), this.content._root());
            if (!Objects.equals(this.content._parent(), this))
                throw new ConsistencyError("content", this, this.content._parent());
            break;
        }
        }
        _dirty = false;
    }
    public static class Element1 extends KaitaiStruct.ReadWrite {
        public static Element1 fromFile(String fileName) throws IOException {
            return new Element1(new ByteBufferKaitaiStream(fileName));
        }
        public Element1() {
            this(null, null, null);
        }

        public Element1(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Element1(KaitaiStream _io, NavParentSwitch _parent) {
            this(_io, _parent, null);
        }

        public Element1(KaitaiStream _io, NavParentSwitch _parent, NavParentSwitch _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.foo = this._io.readU1();
            this.subelement = new Subelement1(this._io, this, _root);
            this.subelement._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.subelement._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.foo);
            this.subelement._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.subelement._root(), _root()))
                throw new ConsistencyError("subelement", _root(), this.subelement._root());
            if (!Objects.equals(this.subelement._parent(), this))
                throw new ConsistencyError("subelement", this, this.subelement._parent());
            _dirty = false;
        }
        private int foo;
        private Subelement1 subelement;
        private NavParentSwitch _root;
        private NavParentSwitch _parent;
        public int foo() { return foo; }
        public void setFoo(int _v) { _dirty = true; foo = _v; }
        public Subelement1 subelement() { return subelement; }
        public void setSubelement(Subelement1 _v) { _dirty = true; subelement = _v; }
        public NavParentSwitch _root() { return _root; }
        public void set_root(NavParentSwitch _v) { _dirty = true; _root = _v; }
        public NavParentSwitch _parent() { return _parent; }
        public void set_parent(NavParentSwitch _v) { _dirty = true; _parent = _v; }
    }
    public static class Subelement1 extends KaitaiStruct.ReadWrite {
        public static Subelement1 fromFile(String fileName) throws IOException {
            return new Subelement1(new ByteBufferKaitaiStream(fileName));
        }
        public Subelement1() {
            this(null, null, null);
        }

        public Subelement1(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Subelement1(KaitaiStream _io, NavParentSwitch.Element1 _parent) {
            this(_io, _parent, null);
        }

        public Subelement1(KaitaiStream _io, NavParentSwitch.Element1 _parent, NavParentSwitch _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            if (_parent().foo() == 66) {
                this.bar = this._io.readU1();
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            if (_parent().foo() == 66) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            if (_parent().foo() == 66) {
                this._io.writeU1(this.bar);
            }
        }

        public void _check() {
            if (_parent().foo() == 66) {
            }
            _dirty = false;
        }
        private Integer bar;
        private NavParentSwitch _root;
        private NavParentSwitch.Element1 _parent;
        public Integer bar() { return bar; }
        public void setBar(Integer _v) { _dirty = true; bar = _v; }
        public NavParentSwitch _root() { return _root; }
        public void set_root(NavParentSwitch _v) { _dirty = true; _root = _v; }
        public NavParentSwitch.Element1 _parent() { return _parent; }
        public void set_parent(NavParentSwitch.Element1 _v) { _dirty = true; _parent = _v; }
    }
    private int category;
    private Element1 content;
    private NavParentSwitch _root;
    private KaitaiStruct.ReadWrite _parent;
    public int category() { return category; }
    public void setCategory(int _v) { _dirty = true; category = _v; }
    public Element1 content() { return content; }
    public void setContent(Element1 _v) { _dirty = true; content = _v; }
    public NavParentSwitch _root() { return _root; }
    public void set_root(NavParentSwitch _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
