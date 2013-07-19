# coding: utf-8

class MembersController < ApplicationController
  before_filter :login_required
  # 会員一覧
  def index
    @members = Member.order("number")
  end

  # 検索
  def search
    @members = Member.search(params[:q])
    render "index"
  end

  # 会員情報の詳細
  def show
    @member = Member.find(params[:id])
  end

  # 新規作成フォーム
  def new
    @member = Member.new(birthday: Date.new(1980, 1, 1))
  end
end
