// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NestedTypes3 : KaitaiStruct
    {
        public static NestedTypes3 FromFile(string fileName)
        {
            return new NestedTypes3(new KaitaiStream(fileName));
        }

        public NestedTypes3(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypes3 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _aCc = new SubtypeA.SubtypeCc(m_io, this, m_root);
            _aCD = new SubtypeA.SubtypeC.SubtypeD(m_io, this, m_root);
            _b = new SubtypeB(m_io, this, m_root);
        }
        public partial class SubtypeA : KaitaiStruct
        {
            public static SubtypeA FromFile(string fileName)
            {
                return new SubtypeA(new KaitaiStream(fileName));
            }

            public SubtypeA(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypes3 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            public partial class SubtypeC : KaitaiStruct
            {
                public static SubtypeC FromFile(string fileName)
                {
                    return new SubtypeC(new KaitaiStream(fileName));
                }

                public SubtypeC(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypes3 p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                }
                public partial class SubtypeD : KaitaiStruct
                {
                    public static SubtypeD FromFile(string fileName)
                    {
                        return new SubtypeD(new KaitaiStream(fileName));
                    }

                    public SubtypeD(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypes3 p__root = null) : base(p__io)
                    {
                        m_parent = p__parent;
                        m_root = p__root;
                        _read();
                    }
                    private void _read()
                    {
                        _valueD = m_io.ReadS1();
                    }
                    private sbyte _valueD;
                    private NestedTypes3 m_root;
                    private KaitaiStruct m_parent;
                    public sbyte ValueD { get { return _valueD; } }
                    public NestedTypes3 M_Root { get { return m_root; } }
                    public KaitaiStruct M_Parent { get { return m_parent; } }
                }
                private NestedTypes3 m_root;
                private KaitaiStruct m_parent;
                public NestedTypes3 M_Root { get { return m_root; } }
                public KaitaiStruct M_Parent { get { return m_parent; } }
            }
            public partial class SubtypeCc : KaitaiStruct
            {
                public static SubtypeCc FromFile(string fileName)
                {
                    return new SubtypeCc(new KaitaiStream(fileName));
                }

                public SubtypeCc(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypes3 p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _valueCc = m_io.ReadS1();
                }
                private sbyte _valueCc;
                private NestedTypes3 m_root;
                private KaitaiStruct m_parent;
                public sbyte ValueCc { get { return _valueCc; } }
                public NestedTypes3 M_Root { get { return m_root; } }
                public KaitaiStruct M_Parent { get { return m_parent; } }
            }
            private NestedTypes3 m_root;
            private KaitaiStruct m_parent;
            public NestedTypes3 M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        public partial class SubtypeB : KaitaiStruct
        {
            public static SubtypeB FromFile(string fileName)
            {
                return new SubtypeB(new KaitaiStream(fileName));
            }

            public SubtypeB(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypes3 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _valueB = m_io.ReadS1();
                _aCc = new SubtypeA.SubtypeCc(m_io, this, m_root);
                _aCD = new SubtypeA.SubtypeC.SubtypeD(m_io, this, m_root);
            }
            private sbyte _valueB;
            private SubtypeA.SubtypeCc _aCc;
            private SubtypeA.SubtypeC.SubtypeD _aCD;
            private NestedTypes3 m_root;
            private KaitaiStruct m_parent;
            public sbyte ValueB { get { return _valueB; } }
            public SubtypeA.SubtypeCc ACc { get { return _aCc; } }
            public SubtypeA.SubtypeC.SubtypeD ACD { get { return _aCD; } }
            public NestedTypes3 M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private SubtypeA.SubtypeCc _aCc;
        private SubtypeA.SubtypeC.SubtypeD _aCD;
        private SubtypeB _b;
        private NestedTypes3 m_root;
        private KaitaiStruct m_parent;
        public SubtypeA.SubtypeCc ACc { get { return _aCc; } }
        public SubtypeA.SubtypeC.SubtypeD ACD { get { return _aCD; } }
        public SubtypeB B { get { return _b; } }
        public NestedTypes3 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
