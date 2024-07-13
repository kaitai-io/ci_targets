// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrEncodingsEscapingEnc : KaitaiStruct
    {
        public static StrEncodingsEscapingEnc FromFile(string fileName)
        {
            return new StrEncodingsEscapingEnc(new KaitaiStream(fileName));
        }

        public StrEncodingsEscapingEnc(KaitaiStream p__io, KaitaiStruct p__parent = null, StrEncodingsEscapingEnc p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _lenOf1 = m_io.ReadU2le();
            __raw_str1 = m_io.ReadBytes(LenOf1);
            var io___raw_str1 = new KaitaiStream(__raw_str1);
            _str1 = new Str1Wrapper(io___raw_str1, this, m_root);
            _lenOf2 = m_io.ReadU2le();
            __raw_str2 = m_io.ReadBytes(LenOf2);
            var io___raw_str2 = new KaitaiStream(__raw_str2);
            _str2 = new Str2Wrapper(io___raw_str2, this, m_root);
            _lenOf3 = m_io.ReadU2le();
            __raw_str3 = m_io.ReadBytes(LenOf3);
            var io___raw_str3 = new KaitaiStream(__raw_str3);
            _str3 = new Str3Wrapper(io___raw_str3, this, m_root);
            _lenOf4 = m_io.ReadU2le();
            __raw_str4 = m_io.ReadBytes(LenOf4);
            var io___raw_str4 = new KaitaiStream(__raw_str4);
            _str4 = new Str4Wrapper(io___raw_str4, this, m_root);
        }
        public partial class Str1Wrapper : KaitaiStruct
        {
            public static Str1Wrapper FromFile(string fileName)
            {
                return new Str1Wrapper(new KaitaiStream(fileName));
            }

            public Str1Wrapper(KaitaiStream p__io, StrEncodingsEscapingEnc p__parent = null, StrEncodingsEscapingEnc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_v = false;
                _read();
            }
            private void _read()
            {
            }
            private bool f_v;
            private string _v;
            public string V
            {
                get
                {
                    if (f_v)
                        return _v;
                    long _pos = m_io.Pos;
                    m_io.Seek(0);
                    _v = System.Text.Encoding.GetEncoding("ASCII\\\\x").GetString(m_io.ReadBytesFull());
                    m_io.Seek(_pos);
                    f_v = true;
                    return _v;
                }
            }
            private StrEncodingsEscapingEnc m_root;
            private StrEncodingsEscapingEnc m_parent;
            public StrEncodingsEscapingEnc M_Root { get { return m_root; } }
            public StrEncodingsEscapingEnc M_Parent { get { return m_parent; } }
        }
        public partial class Str2Wrapper : KaitaiStruct
        {
            public static Str2Wrapper FromFile(string fileName)
            {
                return new Str2Wrapper(new KaitaiStream(fileName));
            }

            public Str2Wrapper(KaitaiStream p__io, StrEncodingsEscapingEnc p__parent = null, StrEncodingsEscapingEnc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_v = false;
                _read();
            }
            private void _read()
            {
            }
            private bool f_v;
            private string _v;
            public string V
            {
                get
                {
                    if (f_v)
                        return _v;
                    long _pos = m_io.Pos;
                    m_io.Seek(0);
                    _v = System.Text.Encoding.GetEncoding("UTF-8\\'x").GetString(m_io.ReadBytesFull());
                    m_io.Seek(_pos);
                    f_v = true;
                    return _v;
                }
            }
            private StrEncodingsEscapingEnc m_root;
            private StrEncodingsEscapingEnc m_parent;
            public StrEncodingsEscapingEnc M_Root { get { return m_root; } }
            public StrEncodingsEscapingEnc M_Parent { get { return m_parent; } }
        }
        public partial class Str3Wrapper : KaitaiStruct
        {
            public static Str3Wrapper FromFile(string fileName)
            {
                return new Str3Wrapper(new KaitaiStream(fileName));
            }

            public Str3Wrapper(KaitaiStream p__io, StrEncodingsEscapingEnc p__parent = null, StrEncodingsEscapingEnc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_v = false;
                _read();
            }
            private void _read()
            {
            }
            private bool f_v;
            private string _v;
            public string V
            {
                get
                {
                    if (f_v)
                        return _v;
                    long _pos = m_io.Pos;
                    m_io.Seek(0);
                    _v = System.Text.Encoding.GetEncoding("SJIS\\\"x").GetString(m_io.ReadBytesFull());
                    m_io.Seek(_pos);
                    f_v = true;
                    return _v;
                }
            }
            private StrEncodingsEscapingEnc m_root;
            private StrEncodingsEscapingEnc m_parent;
            public StrEncodingsEscapingEnc M_Root { get { return m_root; } }
            public StrEncodingsEscapingEnc M_Parent { get { return m_parent; } }
        }
        public partial class Str4Wrapper : KaitaiStruct
        {
            public static Str4Wrapper FromFile(string fileName)
            {
                return new Str4Wrapper(new KaitaiStream(fileName));
            }

            public Str4Wrapper(KaitaiStream p__io, StrEncodingsEscapingEnc p__parent = null, StrEncodingsEscapingEnc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_v = false;
                _read();
            }
            private void _read()
            {
            }
            private bool f_v;
            private string _v;
            public string V
            {
                get
                {
                    if (f_v)
                        return _v;
                    long _pos = m_io.Pos;
                    m_io.Seek(0);
                    _v = System.Text.Encoding.GetEncoding("IBM437\\nx").GetString(m_io.ReadBytesFull());
                    m_io.Seek(_pos);
                    f_v = true;
                    return _v;
                }
            }
            private StrEncodingsEscapingEnc m_root;
            private StrEncodingsEscapingEnc m_parent;
            public StrEncodingsEscapingEnc M_Root { get { return m_root; } }
            public StrEncodingsEscapingEnc M_Parent { get { return m_parent; } }
        }
        private ushort _lenOf1;
        private Str1Wrapper _str1;
        private ushort _lenOf2;
        private Str2Wrapper _str2;
        private ushort _lenOf3;
        private Str3Wrapper _str3;
        private ushort _lenOf4;
        private Str4Wrapper _str4;
        private StrEncodingsEscapingEnc m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_str1;
        private byte[] __raw_str2;
        private byte[] __raw_str3;
        private byte[] __raw_str4;
        public ushort LenOf1 { get { return _lenOf1; } }
        public Str1Wrapper Str1 { get { return _str1; } }
        public ushort LenOf2 { get { return _lenOf2; } }
        public Str2Wrapper Str2 { get { return _str2; } }
        public ushort LenOf3 { get { return _lenOf3; } }
        public Str3Wrapper Str3 { get { return _str3; } }
        public ushort LenOf4 { get { return _lenOf4; } }
        public Str4Wrapper Str4 { get { return _str4; } }
        public StrEncodingsEscapingEnc M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawStr1 { get { return __raw_str1; } }
        public byte[] M_RawStr2 { get { return __raw_str2; } }
        public byte[] M_RawStr3 { get { return __raw_str3; } }
        public byte[] M_RawStr4 { get { return __raw_str4; } }
    }
}
