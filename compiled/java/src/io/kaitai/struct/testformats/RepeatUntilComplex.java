// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class RepeatUntilComplex extends KaitaiStruct {
    public static RepeatUntilComplex fromFile(String fileName) throws IOException {
        return new RepeatUntilComplex(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatUntilComplex(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilComplex(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilComplex(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilComplex _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.first = new ArrayList<TypeU1>();
        {
            TypeU1 _it;
            int i = 0;
            do {
                _it = new TypeU1(this._io, this, _root);
                this.first.add(_it);
                i++;
            } while (!(_it.count() == 0));
        }
        this.second = new ArrayList<TypeU2>();
        {
            TypeU2 _it;
            int i = 0;
            do {
                _it = new TypeU2(this._io, this, _root);
                this.second.add(_it);
                i++;
            } while (!(_it.count() == 0));
        }
        this.third = new ArrayList<Integer>();
        {
            int _it;
            int i = 0;
            do {
                _it = this._io.readU1();
                this.third.add(_it);
                i++;
            } while (!(_it == 0));
        }
    }
    public static class TypeU1 extends KaitaiStruct {
        public static TypeU1 fromFile(String fileName) throws IOException {
            return new TypeU1(new ByteBufferKaitaiStream(fileName));
        }

        public TypeU1(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TypeU1(KaitaiStream _io, RepeatUntilComplex _parent) {
            this(_io, _parent, null);
        }

        public TypeU1(KaitaiStream _io, RepeatUntilComplex _parent, RepeatUntilComplex _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.count = this._io.readU1();
            this.values = new ArrayList<Integer>();
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
            return new TypeU2(new ByteBufferKaitaiStream(fileName));
        }

        public TypeU2(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TypeU2(KaitaiStream _io, RepeatUntilComplex _parent) {
            this(_io, _parent, null);
        }

        public TypeU2(KaitaiStream _io, RepeatUntilComplex _parent, RepeatUntilComplex _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.count = this._io.readU2le();
            this.values = new ArrayList<Integer>();
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
