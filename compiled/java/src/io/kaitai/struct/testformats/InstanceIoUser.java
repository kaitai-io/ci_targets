// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;

public class InstanceIoUser extends KaitaiStruct {
    public static InstanceIoUser fromFile(String fileName) throws IOException {
        return new InstanceIoUser(new ByteBufferKaitaiStream(fileName));
    }

    public InstanceIoUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceIoUser(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public InstanceIoUser(KaitaiStream _io, KaitaiStruct _parent, InstanceIoUser _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.qtyEntries = this._io.readU4le();
        this.entries = new ArrayList<Entry>();
        for (int i = 0; i < qtyEntries(); i++) {
            this.entries.add(new Entry(this._io, this, _root));
        }
        this._raw_strings = this._io.readBytesFull();
        KaitaiStream _io__raw_strings = new ByteBufferKaitaiStream(_raw_strings);
        this.strings = new StringsObj(_io__raw_strings, this, _root);
    }
    public static class Entry extends KaitaiStruct {
        public static Entry fromFile(String fileName) throws IOException {
            return new Entry(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.nameOfs = this._io.readU4le();
            this.value = this._io.readU4le();
        }
        private String name;
        public String name() {
            if (this.name != null)
                return this.name;
            KaitaiStream io = _root().strings()._io();
            long _pos = io.pos();
            io.seek(nameOfs());
            this.name = new String(io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
            io.seek(_pos);
            return this.name;
        }
        private long nameOfs;
        private long value;
        private InstanceIoUser _root;
        private InstanceIoUser _parent;
        public long nameOfs() { return nameOfs; }
        public long value() { return value; }
        public InstanceIoUser _root() { return _root; }
        public InstanceIoUser _parent() { return _parent; }
    }
    public static class StringsObj extends KaitaiStruct {
        public static StringsObj fromFile(String fileName) throws IOException {
            return new StringsObj(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.str = new ArrayList<String>();
            {
                int i = 0;
                while (!this._io.isEof()) {
                    this.str.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
                    i++;
                }
            }
        }
        private ArrayList<String> str;
        private InstanceIoUser _root;
        private InstanceIoUser _parent;
        public ArrayList<String> str() { return str; }
        public InstanceIoUser _root() { return _root; }
        public InstanceIoUser _parent() { return _parent; }
    }
    private long qtyEntries;
    private ArrayList<Entry> entries;
    private StringsObj strings;
    private InstanceIoUser _root;
    private KaitaiStruct _parent;
    private byte[] _raw_strings;
    public long qtyEntries() { return qtyEntries; }
    public ArrayList<Entry> entries() { return entries; }
    public StringsObj strings() { return strings; }
    public InstanceIoUser _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_strings() { return _raw_strings; }
}
