// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsPassBool : KaitaiStruct
    {
        public static ParamsPassBool FromFile(string fileName)
        {
            return new ParamsPassBool(new KaitaiStream(fileName));
        }

        public ParamsPassBool(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassBool p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_vFalse = false;
            f_vTrue = false;
            _read();
        }
        private void _read()
        {
            _sFalse = m_io.ReadBitsIntBe(1) != 0;
            _sTrue = m_io.ReadBitsIntBe(1) != 0;
            m_io.AlignToByte();
            _seqB1 = new ParamTypeB1(STrue, m_io, this, m_root);
            _seqBool = new ParamTypeBool(SFalse, m_io, this, m_root);
            _literalB1 = new ParamTypeB1(false, m_io, this, m_root);
            _literalBool = new ParamTypeBool(true, m_io, this, m_root);
            _instB1 = new ParamTypeB1(VTrue, m_io, this, m_root);
            _instBool = new ParamTypeBool(VFalse, m_io, this, m_root);
        }
        public partial class ParamTypeB1 : KaitaiStruct
        {
            public ParamTypeB1(bool p_arg, KaitaiStream p__io, ParamsPassBool p__parent = null, ParamsPassBool p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _arg = p_arg;
                _read();
            }
            private void _read()
            {
                _foo = m_io.ReadBytes((Arg ? 1 : 2));
            }
            private byte[] _foo;
            private bool _arg;
            private ParamsPassBool m_root;
            private ParamsPassBool m_parent;
            public byte[] Foo { get { return _foo; } }
            public bool Arg { get { return _arg; } }
            public ParamsPassBool M_Root { get { return m_root; } }
            public ParamsPassBool M_Parent { get { return m_parent; } }
        }
        public partial class ParamTypeBool : KaitaiStruct
        {
            public ParamTypeBool(bool p_arg, KaitaiStream p__io, ParamsPassBool p__parent = null, ParamsPassBool p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _arg = p_arg;
                _read();
            }
            private void _read()
            {
                _foo = m_io.ReadBytes((Arg ? 1 : 2));
            }
            private byte[] _foo;
            private bool _arg;
            private ParamsPassBool m_root;
            private ParamsPassBool m_parent;
            public byte[] Foo { get { return _foo; } }
            public bool Arg { get { return _arg; } }
            public ParamsPassBool M_Root { get { return m_root; } }
            public ParamsPassBool M_Parent { get { return m_parent; } }
        }
        private bool f_vFalse;
        private bool _vFalse;
        public bool VFalse
        {
            get
            {
                if (f_vFalse)
                    return _vFalse;
                f_vFalse = true;
                _vFalse = (bool) (false);
                return _vFalse;
            }
        }
        private bool f_vTrue;
        private bool _vTrue;
        public bool VTrue
        {
            get
            {
                if (f_vTrue)
                    return _vTrue;
                f_vTrue = true;
                _vTrue = (bool) (true);
                return _vTrue;
            }
        }
        private bool _sFalse;
        private bool _sTrue;
        private ParamTypeB1 _seqB1;
        private ParamTypeBool _seqBool;
        private ParamTypeB1 _literalB1;
        private ParamTypeBool _literalBool;
        private ParamTypeB1 _instB1;
        private ParamTypeBool _instBool;
        private ParamsPassBool m_root;
        private KaitaiStruct m_parent;
        public bool SFalse { get { return _sFalse; } }
        public bool STrue { get { return _sTrue; } }
        public ParamTypeB1 SeqB1 { get { return _seqB1; } }
        public ParamTypeBool SeqBool { get { return _seqBool; } }
        public ParamTypeB1 LiteralB1 { get { return _literalB1; } }
        public ParamTypeBool LiteralBool { get { return _literalBool; } }
        public ParamTypeB1 InstB1 { get { return _instB1; } }
        public ParamTypeBool InstBool { get { return _instBool; } }
        public ParamsPassBool M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
