// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class RepeatUntilComplex extends KaitaiStruct {
    public static RepeatUntilComplex fromFile(String fileName) throws IOException {
        return new RepeatUntilComplex(new KaitaiStream(fileName));
    }

    public RepeatUntilComplex(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public RepeatUntilComplex(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public RepeatUntilComplex(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilComplex _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.first = new ArrayList<TypeU1>();
        {
            TypeU1 _it;
            do {
                _it = new TypeU1(this._io, this, _root);
                this.first.add(_it);
            } while (!(_it.count() == 0));
        }
        this.second = new ArrayList<TypeU2>();
        {
            TypeU2 _it;
            do {
                _it = new TypeU2(this._io, this, _root);
                this.second.add(_it);
            } while (!(_it.count() == 0));
        }
        this.third = new ArrayList<Integer>();
        {
            int _it;
            do {
                _it = this._io.readU1();
                this.third.add(_it);
            } while (!(_it == 0));
        }
    }
    public static class TypeU1 extends KaitaiStruct {
        public static TypeU1 fromFile(String fileName) throws IOException {
            return new TypeU1(new KaitaiStream(fileName));
        }

        public TypeU1(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public TypeU1(KaitaiStream _io, RepeatUntilComplex _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public TypeU1(KaitaiStream _io, RepeatUntilComplex _parent, RepeatUntilComplex _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.count = this._io.readU1();
            values = new ArrayList<Integer>((int) (count()));
            for (int i = 0; i < count(); i++) {
                this.values.add(this._io.readU1());
            }
        }
        private int count;
        private ArrayList<Integer> values;
        private RepeatUntilComplex _root;
        private RepeatUntilComplex _parent;
        public int count() { return count; }
        public ArrayList<Integer> values() { return values; }
        public RepeatUntilComplex _root() { return _root; }
        public RepeatUntilComplex _parent() { return _parent; }
    }
    public static class TypeU2 extends KaitaiStruct {
        public static TypeU2 fromFile(String fileName) throws IOException {
            return new TypeU2(new KaitaiStream(fileName));
        }

        public TypeU2(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public TypeU2(KaitaiStream _io, RepeatUntilComplex _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public TypeU2(KaitaiStream _io, RepeatUntilComplex _parent, RepeatUntilComplex _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.count = this._io.readU2le();
            values = new ArrayList<Integer>((int) (count()));
            for (int i = 0; i < count(); i++) {
                this.values.add(this._io.readU2le());
            }
        }
        private int count;
        private ArrayList<Integer> values;
        private RepeatUntilComplex _root;
        private RepeatUntilComplex _parent;
        public int count() { return count; }
        public ArrayList<Integer> values() { return values; }
        public RepeatUntilComplex _root() { return _root; }
        public RepeatUntilComplex _parent() { return _parent; }
    }
    private ArrayList<TypeU1> first;
    private ArrayList<TypeU2> second;
    private ArrayList<Integer> third;
    private RepeatUntilComplex _root;
    private KaitaiStruct _parent;
    public ArrayList<TypeU1> first() { return first; }
    public ArrayList<TypeU2> second() { return second; }
    public ArrayList<Integer> third() { return third; }
    public RepeatUntilComplex _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
