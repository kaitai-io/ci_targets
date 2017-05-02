// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NestedTypes2 : KaitaiStruct
    {
        public static NestedTypes2 FromFile(string fileName)
        {
            return new NestedTypes2(new KaitaiStream(fileName));
        }

        public NestedTypes2(KaitaiStream io, KaitaiStruct parent = null, NestedTypes2 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _one = new SubtypeA(m_io, this, m_root);
            _two = new SubtypeB(m_io, this, m_root);
        }
        public partial class SubtypeA : KaitaiStruct
        {
            public static SubtypeA FromFile(string fileName)
            {
                return new SubtypeA(new KaitaiStream(fileName));
            }

            public SubtypeA(KaitaiStream io, NestedTypes2 parent = null, NestedTypes2 root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _typedAtRoot = new SubtypeB(m_io, this, m_root);
                _typedHere1 = new SubtypeC(m_io, this, m_root);
                _typedHere2 = new SubtypeCc(m_io, this, m_root);
            }
            public partial class SubtypeC : KaitaiStruct
            {
                public static SubtypeC FromFile(string fileName)
                {
                    return new SubtypeC(new KaitaiStream(fileName));
                }

                public SubtypeC(KaitaiStream io, NestedTypes2.SubtypeA parent = null, NestedTypes2 root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _parse();
                }

                private void _parse()
                {
                    _valueC = m_io.ReadS1();
                    _typedHere = new SubtypeD(m_io, this, m_root);
                    _typedParent = new SubtypeCc(m_io, this, m_root);
                    _typedRoot = new SubtypeB(m_io, this, m_root);
                }
                public partial class SubtypeD : KaitaiStruct
                {
                    public static SubtypeD FromFile(string fileName)
                    {
                        return new SubtypeD(new KaitaiStream(fileName));
                    }

                    public SubtypeD(KaitaiStream io, NestedTypes2.SubtypeA.SubtypeC parent = null, NestedTypes2 root = null) : base(io)
                    {
                        m_parent = parent;
                        m_root = root;
                        _parse();
                    }

                    private void _parse()
                    {
                        _valueD = m_io.ReadS1();
                    }
                    private sbyte _valueD;
                    private NestedTypes2 m_root;
                    private NestedTypes2.SubtypeA.SubtypeC m_parent;
                    public sbyte ValueD { get { return _valueD; } }
                    public NestedTypes2 M_Root { get { return m_root; } }
                    public NestedTypes2.SubtypeA.SubtypeC M_Parent { get { return m_parent; } }
                }
                private sbyte _valueC;
                private SubtypeD _typedHere;
                private SubtypeCc _typedParent;
                private SubtypeB _typedRoot;
                private NestedTypes2 m_root;
                private NestedTypes2.SubtypeA m_parent;
                public sbyte ValueC { get { return _valueC; } }
                public SubtypeD TypedHere { get { return _typedHere; } }
                public SubtypeCc TypedParent { get { return _typedParent; } }
                public SubtypeB TypedRoot { get { return _typedRoot; } }
                public NestedTypes2 M_Root { get { return m_root; } }
                public NestedTypes2.SubtypeA M_Parent { get { return m_parent; } }
            }
            public partial class SubtypeCc : KaitaiStruct
            {
                public static SubtypeCc FromFile(string fileName)
                {
                    return new SubtypeCc(new KaitaiStream(fileName));
                }

                public SubtypeCc(KaitaiStream io, KaitaiStruct parent = null, NestedTypes2 root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _parse();
                }

                private void _parse()
                {
                    _valueCc = m_io.ReadS1();
                }
                private sbyte _valueCc;
                private NestedTypes2 m_root;
                private KaitaiStruct m_parent;
                public sbyte ValueCc { get { return _valueCc; } }
                public NestedTypes2 M_Root { get { return m_root; } }
                public KaitaiStruct M_Parent { get { return m_parent; } }
            }
            private SubtypeB _typedAtRoot;
            private SubtypeC _typedHere1;
            private SubtypeCc _typedHere2;
            private NestedTypes2 m_root;
            private NestedTypes2 m_parent;
            public SubtypeB TypedAtRoot { get { return _typedAtRoot; } }
            public SubtypeC TypedHere1 { get { return _typedHere1; } }
            public SubtypeCc TypedHere2 { get { return _typedHere2; } }
            public NestedTypes2 M_Root { get { return m_root; } }
            public NestedTypes2 M_Parent { get { return m_parent; } }
        }
        public partial class SubtypeB : KaitaiStruct
        {
            public static SubtypeB FromFile(string fileName)
            {
                return new SubtypeB(new KaitaiStream(fileName));
            }

            public SubtypeB(KaitaiStream io, KaitaiStruct parent = null, NestedTypes2 root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _valueB = m_io.ReadS1();
            }
            private sbyte _valueB;
            private NestedTypes2 m_root;
            private KaitaiStruct m_parent;
            public sbyte ValueB { get { return _valueB; } }
            public NestedTypes2 M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private SubtypeA _one;
        private SubtypeB _two;
        private NestedTypes2 m_root;
        private KaitaiStruct m_parent;
        public SubtypeA One { get { return _one; } }
        public SubtypeB Two { get { return _two; } }
        public NestedTypes2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
