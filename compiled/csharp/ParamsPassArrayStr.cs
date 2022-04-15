// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ParamsPassArrayStr : KaitaiStruct
    {
        public static ParamsPassArrayStr FromFile(string fileName)
        {
            return new ParamsPassArrayStr(new KaitaiStream(fileName));
        }

        public ParamsPassArrayStr(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassArrayStr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_strArrayCalc = false;
            _read();
        }
        private void _read()
        {
            _strArray = new List<string>();
            for (var i = 0; i < 3; i++)
            {
                _strArray.Add(System.Text.Encoding.GetEncoding("ascii").GetString(m_io.ReadBytes(2)));
            }
            _passStrArray = new WantsStrs(StrArray, m_io, this, m_root);
            _passStrArrayCalc = new WantsStrs(StrArrayCalc, m_io, this, m_root);
        }
        public partial class WantsStrs : KaitaiStruct
        {
            public WantsStrs(List<string> p_strs, KaitaiStream p__io, ParamsPassArrayStr p__parent = null, ParamsPassArrayStr p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _strs = p_strs;
                _read();
            }
            private void _read()
            {
            }
            private List<string> _strs;
            private ParamsPassArrayStr m_root;
            private ParamsPassArrayStr m_parent;
            public List<string> Strs { get { return _strs; } }
            public ParamsPassArrayStr M_Root { get { return m_root; } }
            public ParamsPassArrayStr M_Parent { get { return m_parent; } }
        }
        private bool f_strArrayCalc;
        private List<string> _strArrayCalc;
        public List<string> StrArrayCalc
        {
            get
            {
                if (f_strArrayCalc)
                    return _strArrayCalc;
                _strArrayCalc = (List<string>) (new List<string> { "aB", "Cd" });
                f_strArrayCalc = true;
                return _strArrayCalc;
            }
        }
        private List<string> _strArray;
        private WantsStrs _passStrArray;
        private WantsStrs _passStrArrayCalc;
        private ParamsPassArrayStr m_root;
        private KaitaiStruct m_parent;
        public List<string> StrArray { get { return _strArray; } }
        public WantsStrs PassStrArray { get { return _passStrArray; } }
        public WantsStrs PassStrArrayCalc { get { return _passStrArrayCalc; } }
        public ParamsPassArrayStr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
