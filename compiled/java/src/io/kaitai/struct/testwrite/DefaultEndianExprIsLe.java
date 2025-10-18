// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.Arrays;
import java.util.List;

public class DefaultEndianExprIsLe extends KaitaiStruct.ReadWrite {
    public static DefaultEndianExprIsLe fromFile(String fileName) throws IOException {
        return new DefaultEndianExprIsLe(new ByteBufferKaitaiStream(fileName));
    }
    public DefaultEndianExprIsLe() {
        this(null, null, null);
    }

    public DefaultEndianExprIsLe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultEndianExprIsLe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DefaultEndianExprIsLe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DefaultEndianExprIsLe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.docs = new ArrayList<Doc>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                Doc _t_docs = new Doc(this._io, this, _root);
                try {
                    _t_docs._read();
                } finally {
                    this.docs.add(_t_docs);
                }
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.docs.size(); i++) {
            this.docs.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.docs.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("docs", 0, this._io.size() - this._io.pos());
            this.docs.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("docs", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.docs.size(); i++) {
            if (!Objects.equals(this.docs.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("docs", _root(), this.docs.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.docs.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("docs", this, this.docs.get(((Number) (i)).intValue())._parent());
        }
        _dirty = false;
    }
    public static class Doc extends KaitaiStruct.ReadWrite {
        public static Doc fromFile(String fileName) throws IOException {
            return new Doc(new ByteBufferKaitaiStream(fileName));
        }
        public Doc() {
            this(null, null, null);
        }

        public Doc(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsLe _parent) {
            this(_io, _parent, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsLe _parent, DefaultEndianExprIsLe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.indicator = this._io.readBytes(2);
            this.main = new MainObj(this._io, this, _root);
            this.main._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.main._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.indicator);
            this.main._write_Seq(this._io);
        }

        public void _check() {
            if (this.indicator.length != 2)
                throw new ConsistencyError("indicator", 2, this.indicator.length);
            if (!Objects.equals(this.main._root(), _root()))
                throw new ConsistencyError("main", _root(), this.main._root());
            if (!Objects.equals(this.main._parent(), this))
                throw new ConsistencyError("main", this, this.main._parent());
            _dirty = false;
        }
        public static class MainObj extends KaitaiStruct.ReadWrite {
            public static MainObj fromFile(String fileName) throws IOException {
                return new MainObj(new ByteBufferKaitaiStream(fileName));
            }
            private Boolean _is_le;
            public MainObj() {
                this(null, null, null);
            }

            public MainObj(KaitaiStream _io) {
                this(_io, null, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsLe.Doc _parent) {
                this(_io, _parent, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsLe.Doc _parent, DefaultEndianExprIsLe _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                {
                    byte[] on = _parent().indicator();
                    if (Arrays.equals(on, new byte[] { 73, 73 })) {
                        this._is_le = true;
                    }
                    else {
                        this._is_le = false;
                    }
                }

                if (_is_le == null) {
                    throw new KaitaiStream.UndecidedEndiannessError();
                } else if (_is_le) {
                    _readLE();
                } else {
                    _readBE();
                }
                _dirty = false;
            }
            private void _readLE() {
                this.someInt = this._io.readU4le();
                this.someIntBe = this._io.readU2be();
                this.someIntLe = this._io.readU2le();
                _dirty = false;
            }
            private void _readBE() {
                this.someInt = this._io.readU4be();
                this.someIntBe = this._io.readU2be();
                this.someIntLe = this._io.readU2le();
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();

                if (_is_le == null) {
                    throw new KaitaiStream.UndecidedEndiannessError();
                } else if (_is_le) {
                    _write_SeqLE();
                } else {
                    _write_SeqBE();
                }
            }

            private void _write_SeqLE() {
                this._io.writeU4le(this.someInt);
                this._io.writeU2be(this.someIntBe);
                this._io.writeU2le(this.someIntLe);
            }

            private void _write_SeqBE() {
                this._io.writeU4be(this.someInt);
                this._io.writeU2be(this.someIntBe);
                this._io.writeU2le(this.someIntLe);
            }

            public void _check() {
                _dirty = false;
            }
            public long someInt() { return someInt; }
            public void setSomeInt(long _v) { _dirty = true; someInt = _v; }
            public int someIntBe() { return someIntBe; }
            public void setSomeIntBe(int _v) { _dirty = true; someIntBe = _v; }
            public int someIntLe() { return someIntLe; }
            public void setSomeIntLe(int _v) { _dirty = true; someIntLe = _v; }
            public DefaultEndianExprIsLe _root() { return _root; }
            public void set_root(DefaultEndianExprIsLe _v) { _dirty = true; _root = _v; }
            public DefaultEndianExprIsLe.Doc _parent() { return _parent; }
            public void set_parent(DefaultEndianExprIsLe.Doc _v) { _dirty = true; _parent = _v; }
            private long someInt;
            private int someIntBe;
            private int someIntLe;
            private DefaultEndianExprIsLe _root;
            private DefaultEndianExprIsLe.Doc _parent;
        }
        public byte[] indicator() { return indicator; }
        public void setIndicator(byte[] _v) { _dirty = true; indicator = _v; }
        public MainObj main() { return main; }
        public void setMain(MainObj _v) { _dirty = true; main = _v; }
        public DefaultEndianExprIsLe _root() { return _root; }
        public void set_root(DefaultEndianExprIsLe _v) { _dirty = true; _root = _v; }
        public DefaultEndianExprIsLe _parent() { return _parent; }
        public void set_parent(DefaultEndianExprIsLe _v) { _dirty = true; _parent = _v; }
        private byte[] indicator;
        private MainObj main;
        private DefaultEndianExprIsLe _root;
        private DefaultEndianExprIsLe _parent;
    }
    public List<Doc> docs() { return docs; }
    public void setDocs(List<Doc> _v) { _dirty = true; docs = _v; }
    public DefaultEndianExprIsLe _root() { return _root; }
    public void set_root(DefaultEndianExprIsLe _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Doc> docs;
    private DefaultEndianExprIsLe _root;
    private KaitaiStruct.ReadWrite _parent;
}
