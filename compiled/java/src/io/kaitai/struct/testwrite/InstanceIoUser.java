// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;

public class InstanceIoUser extends KaitaiStruct.ReadWrite {
    public static InstanceIoUser fromFile(String fileName) throws IOException {
        return new InstanceIoUser(new ByteBufferKaitaiStream(fileName));
    }
    public InstanceIoUser() {
        this(null, null, null);
    }

    public InstanceIoUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceIoUser(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public InstanceIoUser(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceIoUser _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.qtyEntries = this._io.readU4le();
        this.entries = new ArrayList<Entry>();
        for (int i = 0; i < qtyEntries(); i++) {
            Entry _t_entries = new Entry(this._io, this, _root);
            try {
                _t_entries._read();
            } finally {
                this.entries.add(_t_entries);
            }
        }
        this._raw_strings = this._io.readBytesFull();
        KaitaiStream _io__raw_strings = new ByteBufferKaitaiStream(this._raw_strings);
        this.strings = new StringsObj(_io__raw_strings, this, _root);
        this.strings._read();
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.entries.size(); i++) {
            this.entries.get(((Number) (i)).intValue())._fetchInstances();
        }
        this.strings._fetchInstances();
    }

    public void _write_Seq() {
        this._io.writeU4le(this.qtyEntries);
        for (int i = 0; i < this.entries.size(); i++) {
            this.entries.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        final KaitaiStream _io__raw_strings = new ByteBufferKaitaiStream(this._io.size() - this._io.pos());
        this._io.addChildStream(_io__raw_strings);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (this._io.size() - this._io.pos()));
            final InstanceIoUser _this = this;
            _io__raw_strings.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strings = _io__raw_strings.toByteArray();
                    parent.writeBytes(_this._raw_strings);
                    if (!(parent.isEof()))
                        throw new ConsistencyError("raw(strings)", parent.size() - parent.pos(), 0);
                }
            });
        }
        this.strings._write_Seq(_io__raw_strings);
    }

    public void _check() {
        if (this.entries.size() != qtyEntries())
            throw new ConsistencyError("entries", this.entries.size(), qtyEntries());
        for (int i = 0; i < this.entries.size(); i++) {
            if (!Objects.equals(this.entries.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("entries", this.entries.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.entries.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("entries", this.entries.get(((Number) (i)).intValue())._parent(), this);
        }
        if (!Objects.equals(this.strings._root(), _root()))
            throw new ConsistencyError("strings", this.strings._root(), _root());
        if (!Objects.equals(this.strings._parent(), this))
            throw new ConsistencyError("strings", this.strings._parent(), this);
    }
    public static class Entry extends KaitaiStruct.ReadWrite {
        public static Entry fromFile(String fileName) throws IOException {
            return new Entry(new ByteBufferKaitaiStream(fileName));
        }
        public Entry() {
            this(null, null, null);
        }

        public Entry(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Entry(KaitaiStream _io, InstanceIoUser _parent) {
            this(_io, _parent, null);
        }

        public Entry(KaitaiStream _io, InstanceIoUser _parent, InstanceIoUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.nameOfs = this._io.readU4le();
            this.value = this._io.readU4le();
        }

        public void _fetchInstances() {
            name();
        }

        public void _write_Seq() {
            _writeName = _toWriteName;
            this._io.writeU4le(this.nameOfs);
            this._io.writeU4le(this.value);
        }

        public void _check() {
        }
        private String name;
        private boolean _writeName = false;
        private boolean _toWriteName = true;
        public String name() {
            if (_writeName)
                _writeName();
            if (this.name != null)
                return this.name;
            KaitaiStream io = _root().strings()._io();
            long _pos = io.pos();
            io.seek(nameOfs());
            this.name = new String(io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
            io.seek(_pos);
            return this.name;
        }
        public void setName(String _v) { name = _v; }
        public void setName_ToWrite(boolean _v) { _toWriteName = _v; }

        public void _writeName() {
            _writeName = false;
            KaitaiStream io = _root().strings()._io();
            long _pos = io.pos();
            io.seek(nameOfs());
            io.writeBytes((this.name).getBytes(Charset.forName("UTF-8")));
            io.writeU1(0);
            io.seek(_pos);
        }

        public void _checkName() {
            if (KaitaiStream.byteArrayIndexOf((this.name).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("name", KaitaiStream.byteArrayIndexOf((this.name).getBytes(Charset.forName("UTF-8")), ((byte) 0)), -1);
        }
        private long nameOfs;
        private long value;
        private InstanceIoUser _root;
        private InstanceIoUser _parent;
        public long nameOfs() { return nameOfs; }
        public void setNameOfs(long _v) { nameOfs = _v; }
        public long value() { return value; }
        public void setValue(long _v) { value = _v; }
        public InstanceIoUser _root() { return _root; }
        public void set_root(InstanceIoUser _v) { _root = _v; }
        public InstanceIoUser _parent() { return _parent; }
        public void set_parent(InstanceIoUser _v) { _parent = _v; }
    }
    public static class StringsObj extends KaitaiStruct.ReadWrite {
        public static StringsObj fromFile(String fileName) throws IOException {
            return new StringsObj(new ByteBufferKaitaiStream(fileName));
        }
        public StringsObj() {
            this(null, null, null);
        }

        public StringsObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StringsObj(KaitaiStream _io, InstanceIoUser _parent) {
            this(_io, _parent, null);
        }

        public StringsObj(KaitaiStream _io, InstanceIoUser _parent, InstanceIoUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.str = new ArrayList<String>();
            {
                int i = 0;
                while (!this._io.isEof()) {
                    this.str.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
                    i++;
                }
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.str.size(); i++) {
            }
        }

        public void _write_Seq() {
            for (int i = 0; i < this.str.size(); i++) {
                if (this._io.isEof())
                    throw new ConsistencyError("str", this._io.size() - this._io.pos(), 0);
                this._io.writeBytes((this.str.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")));
                this._io.writeU1(0);
            }
            if (!(this._io.isEof()))
                throw new ConsistencyError("str", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
            for (int i = 0; i < this.str.size(); i++) {
                if (KaitaiStream.byteArrayIndexOf((this.str.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                    throw new ConsistencyError("str", KaitaiStream.byteArrayIndexOf((this.str.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)), -1);
            }
        }
        private List<String> str;
        private InstanceIoUser _root;
        private InstanceIoUser _parent;
        public List<String> str() { return str; }
        public void setStr(List<String> _v) { str = _v; }
        public InstanceIoUser _root() { return _root; }
        public void set_root(InstanceIoUser _v) { _root = _v; }
        public InstanceIoUser _parent() { return _parent; }
        public void set_parent(InstanceIoUser _v) { _parent = _v; }
    }
    private long qtyEntries;
    private List<Entry> entries;
    private StringsObj strings;
    private InstanceIoUser _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_strings;
    public long qtyEntries() { return qtyEntries; }
    public void setQtyEntries(long _v) { qtyEntries = _v; }
    public List<Entry> entries() { return entries; }
    public void setEntries(List<Entry> _v) { entries = _v; }
    public StringsObj strings() { return strings; }
    public void setStrings(StringsObj _v) { strings = _v; }
    public InstanceIoUser _root() { return _root; }
    public void set_root(InstanceIoUser _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_strings() { return _raw_strings; }
    public void set_raw_Strings(byte[] _v) { _raw_strings = _v; }
}
