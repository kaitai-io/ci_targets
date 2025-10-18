// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class TypeTernary2ndFalsy : KaitaiStruct
    {
        public static TypeTernary2ndFalsy FromFile(string fileName)
        {
            return new TypeTernary2ndFalsy(new KaitaiStream(fileName));
        }

        public TypeTernary2ndFalsy(KaitaiStream p__io, KaitaiStruct p__parent = null, TypeTernary2ndFalsy p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_nullUt = false;
            f_t = false;
            f_vFalse = false;
            f_vFloatNegZero = false;
            f_vFloatZero = false;
            f_vIntArrayEmpty = false;
            f_vIntNegZero = false;
            f_vIntZero = false;
            f_vNullUt = false;
            f_vStrEmpty = false;
            f_vStrWZero = false;
            _read();
        }
        private void _read()
        {
            _intTruthy = m_io.ReadU1();
            _ut = new Foo(m_io, this, m_root);
            _intArray = new List<byte>();
            for (var i = 0; i < 2; i++)
            {
                _intArray.Add(m_io.ReadU1());
            }
            _intArrayEmpty = new List<byte>();
            for (var i = 0; i < 0; i++)
            {
                _intArrayEmpty.Add(m_io.ReadU1());
            }
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, TypeTernary2ndFalsy p__parent = null, TypeTernary2ndFalsy p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _m = m_io.ReadU1();
            }
            public byte M { get { return _m; } }
            public TypeTernary2ndFalsy M_Root { get { return m_root; } }
            public TypeTernary2ndFalsy M_Parent { get { return m_parent; } }
            private byte _m;
            private TypeTernary2ndFalsy m_root;
            private TypeTernary2ndFalsy m_parent;
        }
        public Foo NullUt
        {
            get
            {
                if (f_nullUt)
                    return _nullUt;
                f_nullUt = true;
                if (false) {
                    _nullUt = (Foo) (Ut);
                }
                return _nullUt;
            }
        }
        public bool T
        {
            get
            {
                if (f_t)
                    return _t;
                f_t = true;
                _t = (bool) (true);
                return _t;
            }
        }
        public bool VFalse
        {
            get
            {
                if (f_vFalse)
                    return _vFalse;
                f_vFalse = true;
                _vFalse = (bool) ((T ? false : true));
                return _vFalse;
            }
        }
        public double VFloatNegZero
        {
            get
            {
                if (f_vFloatNegZero)
                    return _vFloatNegZero;
                f_vFloatNegZero = true;
                _vFloatNegZero = (double) ((T ? -0.0 : -2.72));
                return _vFloatNegZero;
            }
        }
        public double VFloatZero
        {
            get
            {
                if (f_vFloatZero)
                    return _vFloatZero;
                f_vFloatZero = true;
                _vFloatZero = (double) ((T ? 0.0 : 3.14));
                return _vFloatZero;
            }
        }
        public List<byte> VIntArrayEmpty
        {
            get
            {
                if (f_vIntArrayEmpty)
                    return _vIntArrayEmpty;
                f_vIntArrayEmpty = true;
                _vIntArrayEmpty = (List<byte>) ((T ? IntArrayEmpty : IntArray));
                return _vIntArrayEmpty;
            }
        }
        public int VIntNegZero
        {
            get
            {
                if (f_vIntNegZero)
                    return _vIntNegZero;
                f_vIntNegZero = true;
                _vIntNegZero = (int) ((T ? 0 : -20));
                return _vIntNegZero;
            }
        }
        public sbyte VIntZero
        {
            get
            {
                if (f_vIntZero)
                    return _vIntZero;
                f_vIntZero = true;
                _vIntZero = (sbyte) ((T ? 0 : 10));
                return _vIntZero;
            }
        }
        public Foo VNullUt
        {
            get
            {
                if (f_vNullUt)
                    return _vNullUt;
                f_vNullUt = true;
                _vNullUt = (Foo) ((T ? NullUt : Ut));
                return _vNullUt;
            }
        }
        public string VStrEmpty
        {
            get
            {
                if (f_vStrEmpty)
                    return _vStrEmpty;
                f_vStrEmpty = true;
                _vStrEmpty = (string) ((T ? "" : "kaitai"));
                return _vStrEmpty;
            }
        }
        public string VStrWZero
        {
            get
            {
                if (f_vStrWZero)
                    return _vStrWZero;
                f_vStrWZero = true;
                _vStrWZero = (string) ((T ? "0" : "30"));
                return _vStrWZero;
            }
        }
        public byte IntTruthy { get { return _intTruthy; } }
        public Foo Ut { get { return _ut; } }
        public List<byte> IntArray { get { return _intArray; } }
        public List<byte> IntArrayEmpty { get { return _intArrayEmpty; } }
        public TypeTernary2ndFalsy M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_nullUt;
        private Foo _nullUt;
        private bool f_t;
        private bool _t;
        private bool f_vFalse;
        private bool _vFalse;
        private bool f_vFloatNegZero;
        private double _vFloatNegZero;
        private bool f_vFloatZero;
        private double _vFloatZero;
        private bool f_vIntArrayEmpty;
        private List<byte> _vIntArrayEmpty;
        private bool f_vIntNegZero;
        private int _vIntNegZero;
        private bool f_vIntZero;
        private sbyte _vIntZero;
        private bool f_vNullUt;
        private Foo _vNullUt;
        private bool f_vStrEmpty;
        private string _vStrEmpty;
        private bool f_vStrWZero;
        private string _vStrWZero;
        private byte _intTruthy;
        private Foo _ut;
        private List<byte> _intArray;
        private List<byte> _intArrayEmpty;
        private TypeTernary2ndFalsy m_root;
        private KaitaiStruct m_parent;
    }
}
