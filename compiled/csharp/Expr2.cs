// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class Expr2 : KaitaiStruct
    {
        public static Expr2 FromFile(string fileName)
        {
            return new Expr2(new KaitaiStream(fileName));
        }

        public Expr2(KaitaiStream io, KaitaiStruct parent = null, Expr2 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            f_str1LenMod = false;
            f_str1Len = false;
            f_str1Tuple5 = false;
            f_str2Tuple5 = false;
            f_str1Avg = false;
            f_str1Byte1 = false;
            f_str1Char5 = false;
            _str1 = new ModStr(m_io, this, m_root);
            _str2 = new ModStr(m_io, this, m_root);
        }
        public partial class ModStr : KaitaiStruct
        {
            public static ModStr FromFile(string fileName)
            {
                return new ModStr(new KaitaiStream(fileName));
            }

            public ModStr(KaitaiStream io, Expr2 parent = null, Expr2 root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                f_lenMod = false;
                f_char5 = false;
                f_tuple5 = false;
                _lenOrig = m_io.ReadU2le();
                _str = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(LenMod));
                __raw_rest = m_io.ReadBytes(3);
                var io___raw_rest = new KaitaiStream(__raw_rest);
                _rest = new Tuple(io___raw_rest, this, m_root);
            }
            private bool f_lenMod;
            private int _lenMod;
            public int LenMod
            {
                get
                {
                    if (f_lenMod)
                        return _lenMod;
                    _lenMod = (int) ((LenOrig - 3));
                    f_lenMod = true;
                    return _lenMod;
                }
            }
            private bool f_char5;
            private string _char5;
            public string Char5
            {
                get
                {
                    if (f_char5)
                        return _char5;
                    long _pos = m_io.Pos;
                    m_io.Seek(5);
                    _char5 = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(1));
                    m_io.Seek(_pos);
                    f_char5 = true;
                    return _char5;
                }
            }
            private bool f_tuple5;
            private Tuple _tuple5;
            public Tuple Tuple5
            {
                get
                {
                    if (f_tuple5)
                        return _tuple5;
                    long _pos = m_io.Pos;
                    m_io.Seek(5);
                    _tuple5 = new Tuple(m_io, this, m_root);
                    m_io.Seek(_pos);
                    f_tuple5 = true;
                    return _tuple5;
                }
            }
            private ushort _lenOrig;
            private string _str;
            private Tuple _rest;
            private Expr2 m_root;
            private Expr2 m_parent;
            private byte[] __raw_rest;
            public ushort LenOrig { get { return _lenOrig; } }
            public string Str { get { return _str; } }
            public Tuple Rest { get { return _rest; } }
            public Expr2 M_Root { get { return m_root; } }
            public Expr2 M_Parent { get { return m_parent; } }
            public byte[] M_RawRest { get { return __raw_rest; } }
        }
        public partial class Tuple : KaitaiStruct
        {
            public static Tuple FromFile(string fileName)
            {
                return new Tuple(new KaitaiStream(fileName));
            }

            public Tuple(KaitaiStream io, Expr2.ModStr parent = null, Expr2 root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                f_avg = false;
                _byte0 = m_io.ReadU1();
                _byte1 = m_io.ReadU1();
                _byte2 = m_io.ReadU1();
            }
            private bool f_avg;
            private int _avg;
            public int Avg
            {
                get
                {
                    if (f_avg)
                        return _avg;
                    _avg = (int) (((Byte1 + Byte2) / 2));
                    f_avg = true;
                    return _avg;
                }
            }
            private byte _byte0;
            private byte _byte1;
            private byte _byte2;
            private Expr2 m_root;
            private Expr2.ModStr m_parent;
            public byte Byte0 { get { return _byte0; } }
            public byte Byte1 { get { return _byte1; } }
            public byte Byte2 { get { return _byte2; } }
            public Expr2 M_Root { get { return m_root; } }
            public Expr2.ModStr M_Parent { get { return m_parent; } }
        }
        private bool f_str1LenMod;
        private int _str1LenMod;
        public int Str1LenMod
        {
            get
            {
                if (f_str1LenMod)
                    return _str1LenMod;
                _str1LenMod = (int) (Str1.LenMod);
                f_str1LenMod = true;
                return _str1LenMod;
            }
        }
        private bool f_str1Len;
        private int _str1Len;
        public int Str1Len
        {
            get
            {
                if (f_str1Len)
                    return _str1Len;
                _str1Len = (int) (Str1.Str.Length);
                f_str1Len = true;
                return _str1Len;
            }
        }
        private bool f_str1Tuple5;
        private Tuple _str1Tuple5;
        public Tuple Str1Tuple5
        {
            get
            {
                if (f_str1Tuple5)
                    return _str1Tuple5;
                _str1Tuple5 = (Tuple) (Str1.Tuple5);
                f_str1Tuple5 = true;
                return _str1Tuple5;
            }
        }
        private bool f_str2Tuple5;
        private Tuple _str2Tuple5;
        public Tuple Str2Tuple5
        {
            get
            {
                if (f_str2Tuple5)
                    return _str2Tuple5;
                _str2Tuple5 = (Tuple) (Str2.Tuple5);
                f_str2Tuple5 = true;
                return _str2Tuple5;
            }
        }
        private bool f_str1Avg;
        private int _str1Avg;
        public int Str1Avg
        {
            get
            {
                if (f_str1Avg)
                    return _str1Avg;
                _str1Avg = (int) (Str1.Rest.Avg);
                f_str1Avg = true;
                return _str1Avg;
            }
        }
        private bool f_str1Byte1;
        private byte _str1Byte1;
        public byte Str1Byte1
        {
            get
            {
                if (f_str1Byte1)
                    return _str1Byte1;
                _str1Byte1 = (byte) (Str1.Rest.Byte1);
                f_str1Byte1 = true;
                return _str1Byte1;
            }
        }
        private bool f_str1Char5;
        private string _str1Char5;
        public string Str1Char5
        {
            get
            {
                if (f_str1Char5)
                    return _str1Char5;
                _str1Char5 = (string) (Str1.Char5);
                f_str1Char5 = true;
                return _str1Char5;
            }
        }
        private ModStr _str1;
        private ModStr _str2;
        private Expr2 m_root;
        private KaitaiStruct m_parent;
        public ModStr Str1 { get { return _str1; } }
        public ModStr Str2 { get { return _str2; } }
        public Expr2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
