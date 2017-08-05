// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class OpaqueExternalType02Child : KaitaiStruct
    {
        public static OpaqueExternalType02Child FromFile(string fileName)
        {
            return new OpaqueExternalType02Child(new KaitaiStream(fileName));
        }

        public OpaqueExternalType02Child(KaitaiStream p__io, KaitaiStruct p__parent = null, OpaqueExternalType02Child p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_someMethod = false;
            _read();
        }
        private void _read() {
            _s1 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(124, false, true, true));
            _s2 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(124, false, false, true));
            _s3 = new OpaqueExternalType02ChildChild(m_io, this, m_root);
        }
        public partial class OpaqueExternalType02ChildChild : KaitaiStruct
        {
            public static OpaqueExternalType02ChildChild FromFile(string fileName)
            {
                return new OpaqueExternalType02ChildChild(new KaitaiStream(fileName));
            }

            public OpaqueExternalType02ChildChild(KaitaiStream p__io, OpaqueExternalType02Child p__parent = null, OpaqueExternalType02Child p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                if (M_Root.SomeMethod) {
                    _s3 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(64, true, true, true));
                }
            }
            private string _s3;
            private OpaqueExternalType02Child m_root;
            private OpaqueExternalType02Child m_parent;
            public string S3 { get { return _s3; } }
            public OpaqueExternalType02Child M_Root { get { return m_root; } }
            public OpaqueExternalType02Child M_Parent { get { return m_parent; } }
        }
        private bool f_someMethod;
        private bool _someMethod;
        public bool SomeMethod
        {
            get
            {
                if (f_someMethod)
                    return _someMethod;
                _someMethod = (bool) (true);
                f_someMethod = true;
                return _someMethod;
            }
        }
        private string _s1;
        private string _s2;
        private OpaqueExternalType02ChildChild _s3;
        private OpaqueExternalType02Child m_root;
        private KaitaiStruct m_parent;
        public string S1 { get { return _s1; } }
        public string S2 { get { return _s2; } }
        public OpaqueExternalType02ChildChild S3 { get { return _s3; } }
        public OpaqueExternalType02Child M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
