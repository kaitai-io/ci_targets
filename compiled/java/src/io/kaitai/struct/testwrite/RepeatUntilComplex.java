// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;

public class RepeatUntilComplex extends KaitaiStruct.ReadWrite {
    public static RepeatUntilComplex fromFile(String fileName) throws IOException {
        return new RepeatUntilComplex(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatUntilComplex() {
        this(null, null, null);
    }

    public RepeatUntilComplex(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilComplex(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilComplex(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatUntilComplex _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.first = new ArrayList<TypeU1>();
        {
            TypeU1 _it;
            int i = 0;
            do {
                TypeU1 _t_first = new TypeU1(this._io, this, _root);
                try {
                    _t_first._read();
                } finally {
                    _it = _t_first;
                    this.first.add(_it);
                }
                i++;
            } while (!(_it.count() == 0));
        }
        this.second = new ArrayList<TypeU2>();
        {
            TypeU2 _it;
            int i = 0;
            do {
                TypeU2 _t_second = new TypeU2(this._io, this, _root);
                try {
                    _t_second._read();
                } finally {
                    _it = _t_second;
                    this.second.add(_it);
                }
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
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.first.size(); i++) {
            this.first.get(((Number) (i)).intValue())._fetchInstances();
        }
        for (int i = 0; i < this.second.size(); i++) {
            this.second.get(((Number) (i)).intValue())._fetchInstances();
        }
        for (int i = 0; i < this.third.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.first.size(); i++) {
            this.first.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        for (int i = 0; i < this.second.size(); i++) {
            this.second.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        for (int i = 0; i < this.third.size(); i++) {
            this._io.writeU1(this.third.get(((Number) (i)).intValue()));
        }
    }

    public void _check() {
        if (this.first.size() == 0)
            throw new ConsistencyError("first", 0, this.first.size());
        for (int i = 0; i < this.first.size(); i++) {
            if (!Objects.equals(this.first.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("first", _root(), this.first.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.first.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("first", this, this.first.get(((Number) (i)).intValue())._parent());
            {
                TypeU1 _it = this.first.get(((Number) (i)).intValue());
                if ((_it.count() == 0) != (i == this.first.size() - 1))
                    throw new ConsistencyError("first", i == this.first.size() - 1, _it.count() == 0);
            }
        }
        if (this.second.size() == 0)
            throw new ConsistencyError("second", 0, this.second.size());
        for (int i = 0; i < this.second.size(); i++) {
            if (!Objects.equals(this.second.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("second", _root(), this.second.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.second.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("second", this, this.second.get(((Number) (i)).intValue())._parent());
            {
                TypeU2 _it = this.second.get(((Number) (i)).intValue());
                if ((_it.count() == 0) != (i == this.second.size() - 1))
                    throw new ConsistencyError("second", i == this.second.size() - 1, _it.count() == 0);
            }
        }
        if (this.third.size() == 0)
            throw new ConsistencyError("third", 0, this.third.size());
        for (int i = 0; i < this.third.size(); i++) {
            {
                int _it = this.third.get(((Number) (i)).intValue());
                if ((_it == 0) != (i == this.third.size() - 1))
                    throw new ConsistencyError("third", i == this.third.size() - 1, _it == 0);
            }
        }
        _dirty = false;
    }
    public static class TypeU1 extends KaitaiStruct.ReadWrite {
        public static TypeU1 fromFile(String fileName) throws IOException {
            return new TypeU1(new ByteBufferKaitaiStream(fileName));
        }
        public TypeU1() {
            this(null, null, null);
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
        }
        public void _read() {
            this.count = this._io.readU1();
            this.values = new ArrayList<Integer>();
            for (int i = 0; i < count(); i++) {
                this.values.add(this._io.readU1());
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.values.size(); i++) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.count);
            for (int i = 0; i < this.values.size(); i++) {
                this._io.writeU1(this.values.get(((Number) (i)).intValue()));
            }
        }

        public void _check() {
            if (this.values.size() != count())
                throw new ConsistencyError("values", count(), this.values.size());
            for (int i = 0; i < this.values.size(); i++) {
            }
            _dirty = false;
        }
        private int count;
        private List<Integer> values;
        private RepeatUntilComplex _root;
        private RepeatUntilComplex _parent;
        public int count() { return count; }
        public void setCount(int _v) { _dirty = true; count = _v; }
        public List<Integer> values() { return values; }
        public void setValues(List<Integer> _v) { _dirty = true; values = _v; }
        public RepeatUntilComplex _root() { return _root; }
        public void set_root(RepeatUntilComplex _v) { _dirty = true; _root = _v; }
        public RepeatUntilComplex _parent() { return _parent; }
        public void set_parent(RepeatUntilComplex _v) { _dirty = true; _parent = _v; }
    }
    public static class TypeU2 extends KaitaiStruct.ReadWrite {
        public static TypeU2 fromFile(String fileName) throws IOException {
            return new TypeU2(new ByteBufferKaitaiStream(fileName));
        }
        public TypeU2() {
            this(null, null, null);
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
        }
        public void _read() {
            this.count = this._io.readU2le();
            this.values = new ArrayList<Integer>();
            for (int i = 0; i < count(); i++) {
                this.values.add(this._io.readU2le());
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.values.size(); i++) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU2le(this.count);
            for (int i = 0; i < this.values.size(); i++) {
                this._io.writeU2le(this.values.get(((Number) (i)).intValue()));
            }
        }

        public void _check() {
            if (this.values.size() != count())
                throw new ConsistencyError("values", count(), this.values.size());
            for (int i = 0; i < this.values.size(); i++) {
            }
            _dirty = false;
        }
        private int count;
        private List<Integer> values;
        private RepeatUntilComplex _root;
        private RepeatUntilComplex _parent;
        public int count() { return count; }
        public void setCount(int _v) { _dirty = true; count = _v; }
        public List<Integer> values() { return values; }
        public void setValues(List<Integer> _v) { _dirty = true; values = _v; }
        public RepeatUntilComplex _root() { return _root; }
        public void set_root(RepeatUntilComplex _v) { _dirty = true; _root = _v; }
        public RepeatUntilComplex _parent() { return _parent; }
        public void set_parent(RepeatUntilComplex _v) { _dirty = true; _parent = _v; }
    }
    private List<TypeU1> first;
    private List<TypeU2> second;
    private List<Integer> third;
    private RepeatUntilComplex _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<TypeU1> first() { return first; }
    public void setFirst(List<TypeU1> _v) { _dirty = true; first = _v; }
    public List<TypeU2> second() { return second; }
    public void setSecond(List<TypeU2> _v) { _dirty = true; second = _v; }
    public List<Integer> third() { return third; }
    public void setThird(List<Integer> _v) { _dirty = true; third = _v; }
    public RepeatUntilComplex _root() { return _root; }
    public void set_root(RepeatUntilComplex _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
