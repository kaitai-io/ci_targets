// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NavParentSwitch extends KaitaiStruct {
    public static NavParentSwitch fromFile(String fileName) throws IOException {
        return new NavParentSwitch(new KaitaiStream(fileName));
    }

    public NavParentSwitch(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public NavParentSwitch(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public NavParentSwitch(KaitaiStream _io, KaitaiStruct _parent, NavParentSwitch _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.category = this._io.readU1();
        switch (category()) {
        case 1: {
            this.content = new Element1(this._io, this, _root);
            break;
        }
        }
    }
    public static class Element1 extends KaitaiStruct {
        public static Element1 fromFile(String fileName) throws IOException {
            return new Element1(new KaitaiStream(fileName));
        }

        public Element1(KaitaiStream _io) {
            super(_io);
            _init();
        }

        public Element1(KaitaiStream _io, NavParentSwitch _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Element1(KaitaiStream _io, NavParentSwitch _parent, NavParentSwitch _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
            _read();
        }
        private void _read() {
            this.foo = this._io.readU1();
            this.subelement = new Subelement1(this._io, this, _root);
        }
        private int foo;
        private Subelement1 subelement;
        private NavParentSwitch _root;
        private NavParentSwitch _parent;
        public int foo() { return foo; }
        public Subelement1 subelement() { return subelement; }
        public NavParentSwitch _root() { return _root; }
        public NavParentSwitch _parent() { return _parent; }
    }
    public static class Subelement1 extends KaitaiStruct {
        public static Subelement1 fromFile(String fileName) throws IOException {
            return new Subelement1(new KaitaiStream(fileName));
        }

        public Subelement1(KaitaiStream _io) {
            super(_io);
            _init();
        }

        public Subelement1(KaitaiStream _io, NavParentSwitch.Element1 _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Subelement1(KaitaiStream _io, NavParentSwitch.Element1 _parent, NavParentSwitch _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
            _read();
        }
        private void _read() {
            if (_parent().foo() == 66) {
                this.bar = this._io.readU1();
            }
        }
        private Integer bar;
        private NavParentSwitch _root;
        private NavParentSwitch.Element1 _parent;
        public Integer bar() { return bar; }
        public NavParentSwitch _root() { return _root; }
        public NavParentSwitch.Element1 _parent() { return _parent; }
    }
    private int category;
    private Element1 content;
    private NavParentSwitch _root;
    private KaitaiStruct _parent;
    public int category() { return category; }
    public Element1 content() { return content; }
    public NavParentSwitch _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
