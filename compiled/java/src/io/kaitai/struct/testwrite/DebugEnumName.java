// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class DebugEnumName extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static DebugEnumName fromFile(String fileName) throws IOException {
        return new DebugEnumName(new ByteBufferKaitaiStream(fileName));
    }

    public enum TestEnum1 {
        ENUM_VALUE_80(80);

        private final long id;
        TestEnum1(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, TestEnum1> byId = new HashMap<Long, TestEnum1>(1);
        static {
            for (TestEnum1 e : TestEnum1.values())
                byId.put(e.id(), e);
        }
        public static TestEnum1 byId(long id) { return byId.get(id); }
    }

    public enum TestEnum2 {
        ENUM_VALUE_65(65);

        private final long id;
        TestEnum2(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, TestEnum2> byId = new HashMap<Long, TestEnum2>(1);
        static {
            for (TestEnum2 e : TestEnum2.values())
                byId.put(e.id(), e);
        }
        public static TestEnum2 byId(long id) { return byId.get(id); }
    }
    public static String[] _seqFields = new String[] { "one", "arrayOfInts", "testType" };
    public DebugEnumName() {
        this(null, null, null);
    }

    public DebugEnumName(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugEnumName(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DebugEnumName(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DebugEnumName _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("one", this._io.pos());
        this.one = TestEnum1.byId(this._io.readU1());
        _attrEnd.put("one", this._io.pos());
        _attrStart.put("arrayOfInts", this._io.pos());
        this.arrayOfInts = new ArrayList<TestEnum2>();
        for (int i = 0; i < 1; i++) {
            {
                List<Integer> _posList = _arrStart.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrStart.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
            this.arrayOfInts.add(TestEnum2.byId(this._io.readU1()));
            {
                List<Integer> _posList = _arrEnd.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrEnd.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
        }
        _attrEnd.put("arrayOfInts", this._io.pos());
        _attrStart.put("testType", this._io.pos());
        this.testType = new TestSubtype(this._io, this, _root);
        this.testType._read();
        _attrEnd.put("testType", this._io.pos());
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
        }
        this.testType._fetchInstances();
    }

    public void _write_Seq() {
        this._io.writeU1(((Number) (this.one.id())).intValue());
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
            this._io.writeU1(((Number) (this.arrayOfInts.get(((Number) (i)).intValue()).id())).intValue());
        }
        this.testType._write_Seq(this._io);
    }

    public void _check() {
        if (this.arrayOfInts.size() != 1)
            throw new ConsistencyError("array_of_ints", this.arrayOfInts.size(), 1);
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
        }
        if (!Objects.equals(this.testType._root(), _root()))
            throw new ConsistencyError("test_type", this.testType._root(), _root());
        if (!Objects.equals(this.testType._parent(), this))
            throw new ConsistencyError("test_type", this.testType._parent(), this);
    }
    public static class TestSubtype extends KaitaiStruct.ReadWrite {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
        public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

        public static TestSubtype fromFile(String fileName) throws IOException {
            return new TestSubtype(new ByteBufferKaitaiStream(fileName));
        }

        public enum InnerEnum1 {
            ENUM_VALUE_67(67);

            private final long id;
            InnerEnum1(long id) { this.id = id; }
            public long id() { return id; }
            private static final Map<Long, InnerEnum1> byId = new HashMap<Long, InnerEnum1>(1);
            static {
                for (InnerEnum1 e : InnerEnum1.values())
                    byId.put(e.id(), e);
            }
            public static InnerEnum1 byId(long id) { return byId.get(id); }
        }

        public enum InnerEnum2 {
            ENUM_VALUE_11(11);

            private final long id;
            InnerEnum2(long id) { this.id = id; }
            public long id() { return id; }
            private static final Map<Long, InnerEnum2> byId = new HashMap<Long, InnerEnum2>(1);
            static {
                for (InnerEnum2 e : InnerEnum2.values())
                    byId.put(e.id(), e);
            }
            public static InnerEnum2 byId(long id) { return byId.get(id); }
        }
        public static String[] _seqFields = new String[] { "field1", "field2" };
        public TestSubtype() {
            this(null, null, null);
        }

        public TestSubtype(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TestSubtype(KaitaiStream _io, DebugEnumName _parent) {
            this(_io, _parent, null);
        }

        public TestSubtype(KaitaiStream _io, DebugEnumName _parent, DebugEnumName _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("field1", this._io.pos());
            this.field1 = InnerEnum1.byId(this._io.readU1());
            _attrEnd.put("field1", this._io.pos());
            _attrStart.put("field2", this._io.pos());
            this.field2 = this._io.readU1();
            _attrEnd.put("field2", this._io.pos());
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU1(((Number) (this.field1.id())).intValue());
            this._io.writeU1(this.field2);
        }

        public void _check() {
        }
        private InnerEnum2 instanceField;
        public InnerEnum2 instanceField() {
            if (this.instanceField != null)
                return this.instanceField;
            this.instanceField = InnerEnum2.byId(field2() & 15);
            return this.instanceField;
        }
        public void _invalidateInstanceField() { this.instanceField = null; }
        private InnerEnum1 field1;
        private int field2;
        private DebugEnumName _root;
        private DebugEnumName _parent;
        public InnerEnum1 field1() { return field1; }
        public void setField1(InnerEnum1 _v) { field1 = _v; }
        public int field2() { return field2; }
        public void setField2(int _v) { field2 = _v; }
        public DebugEnumName _root() { return _root; }
        public void set_root(DebugEnumName _v) { _root = _v; }
        public DebugEnumName _parent() { return _parent; }
        public void set_parent(DebugEnumName _v) { _parent = _v; }
    }
    private TestEnum1 one;
    private List<TestEnum2> arrayOfInts;
    private TestSubtype testType;
    private DebugEnumName _root;
    private KaitaiStruct.ReadWrite _parent;
    public TestEnum1 one() { return one; }
    public void setOne(TestEnum1 _v) { one = _v; }
    public List<TestEnum2> arrayOfInts() { return arrayOfInts; }
    public void setArrayOfInts(List<TestEnum2> _v) { arrayOfInts = _v; }
    public TestSubtype testType() { return testType; }
    public void setTestType(TestSubtype _v) { testType = _v; }
    public DebugEnumName _root() { return _root; }
    public void set_root(DebugEnumName _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
