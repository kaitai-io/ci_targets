// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class DebugSwitchUser extends KaitaiStruct {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, ArrayList<Integer>> _arrStart = new HashMap<String, ArrayList<Integer>>();
    public Map<String, ArrayList<Integer>> _arrEnd = new HashMap<String, ArrayList<Integer>>();

    public static DebugSwitchUser fromFile(String fileName) throws IOException {
        return new DebugSwitchUser(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "code", "data" };

    public DebugSwitchUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugSwitchUser(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public DebugSwitchUser(KaitaiStream _io, KaitaiStruct _parent, DebugSwitchUser _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("code", this._io.pos());
        this.code = this._io.readU1();
        _attrEnd.put("code", this._io.pos());
        _attrStart.put("data", this._io.pos());
        switch (code()) {
        case 1: {
            this.data = new One(this._io, this, _root);
            ((One) (this.data))._read();
            break;
        }
        case 2: {
            this.data = new Two(this._io, this, _root);
            ((Two) (this.data))._read();
            break;
        }
        }
        _attrEnd.put("data", this._io.pos());
    }
    public static class One extends KaitaiStruct {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, ArrayList<Integer>> _arrStart = new HashMap<String, ArrayList<Integer>>();
        public Map<String, ArrayList<Integer>> _arrEnd = new HashMap<String, ArrayList<Integer>>();

        public static One fromFile(String fileName) throws IOException {
            return new One(new ByteBufferKaitaiStream(fileName));
        }
        public static String[] _seqFields = new String[] { "val" };

        public One(KaitaiStream _io) {
            this(_io, null, null);
        }

        public One(KaitaiStream _io, DebugSwitchUser _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, DebugSwitchUser _parent, DebugSwitchUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("val", this._io.pos());
            this.val = this._io.readS2le();
            _attrEnd.put("val", this._io.pos());
        }
        private short val;
        private DebugSwitchUser _root;
        private DebugSwitchUser _parent;
        public short val() { return val; }
        public DebugSwitchUser _root() { return _root; }
        public DebugSwitchUser _parent() { return _parent; }
    }
    public static class Two extends KaitaiStruct {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, ArrayList<Integer>> _arrStart = new HashMap<String, ArrayList<Integer>>();
        public Map<String, ArrayList<Integer>> _arrEnd = new HashMap<String, ArrayList<Integer>>();

        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }
        public static String[] _seqFields = new String[] { "val" };

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, DebugSwitchUser _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, DebugSwitchUser _parent, DebugSwitchUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("val", this._io.pos());
            this.val = this._io.readU2le();
            _attrEnd.put("val", this._io.pos());
        }
        private int val;
        private DebugSwitchUser _root;
        private DebugSwitchUser _parent;
        public int val() { return val; }
        public DebugSwitchUser _root() { return _root; }
        public DebugSwitchUser _parent() { return _parent; }
    }
    private int code;
    private KaitaiStruct data;
    private DebugSwitchUser _root;
    private KaitaiStruct _parent;
    public int code() { return code; }
    public KaitaiStruct data() { return data; }
    public DebugSwitchUser _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
